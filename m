Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334F441754
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766351634; cv=none; b=W5JCpblc214ZjuzciK+KcNDKvdgNf4Jq8v37e97Hab95XXBYWHxzLXiOLvUX0lToCnCah0estsEeKw2CQGvLtakZe/bUuBjadSGSamTFLoUrEV2ch1AUM8v82FKzNV4i/GgIbJOw2OUjB1h8vrb/xOXS+KMZEAR0I9HtfZkHoZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766351634; c=relaxed/simple;
	bh=g/6tmqc8vKcBtpfeM5VdqI5IvFSVSBfuhxZU0ec636A=;
	h=To:Subject:From:Message-Id:Date; b=gKDjKxCAq6IfIFYbO7eMEddLv3vEZeivauk3+Zp6hBllhcKoUkS7g8zy7xC0NrFFoNcOhlqwLUaU4F9/Nxjk6w7U8x6JS4obqm9wMuU2Lb8VNPqRZi+k+ND6GsFDNetyBDq/fiF635O5obMW3sSGaRaM3bHm2Jkui/XUNieH0CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfZrCmhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfZrCmhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65BAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766351633;
	bh=g/6tmqc8vKcBtpfeM5VdqI5IvFSVSBfuhxZU0ec636A=;
	h=To:Subject:From:Date:From;
	b=FfZrCmhiWaHyqjTKdNjBasbng8pmF8bi8feDTAQD/JqEyIXf/BX11jC/PBniTtSbp
	 5xM8//yiM1jve/H7lTQSL3y3Qeao4gmpyi/8/SUxNXgUGZXtCCKo1Cf8MgxZhEwcEX
	 zOE4mbGKN/qRGcEuL3Wje1xz8GKl0jiVY1aY1GoHU7E2e6w9qEJj4sPxpZAVA9ikq2
	 dvPAFV+p6B4MPZH7YjyUqxzCMvPEELId+d/taXrNfovl8mA5ti7mNQ6hlMMwIlPX/u
	 l5QsttSYOW/rH1T8zsBNUWqZQ7n9Ubc2xB8zUxep+RIP6/9VY9PCLAns++sW1QI/Iv
	 illnFoolg0tKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95498E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635163358.6459.15953326327405577649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a698afdc1be66079e8ac1938d140cbe006d202f741773fc529281fae7f4c3e3b
Date: Sun, 21 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766351633
