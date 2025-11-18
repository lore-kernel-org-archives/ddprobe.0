Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE41E21ABAC
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763443915; cv=none; b=OSqppD6oble8a3/HJ5KoMSpjQOMYYJzm0CZzdKhTCJN+3mmiVoHcxrt1ojtZXwG9lXfgZ7N3S3mZPMBDuTPaOjPUjG1CYjfHuML7PuU6ac4hOMiu6ef5dnElyGXowgwspBvtdNo5l1SmOL0zqJVF9zO463lejw9eET1QGHDnhmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763443915; c=relaxed/simple;
	bh=H5Inm+WVuw93CLfPU5hifbk5hrIoA86Nco+oPefX4Fc=;
	h=To:Subject:From:Message-Id:Date; b=sNcbRZWNa527Aj8OwVHBouuNOmi9aCnZ/IUxteRdW8xpBvPUepndOoX+Eh+Nc0WPXs++8srjTcl0pH2cVBiCBIOoLLm4asWWkszi3JE1X1Eu1QWaBz6F27gZHyun6qRYIy9Qpo/BREUfwXSESGNDME771CKZWfTi++jNg1FoPn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHRaRS+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHRaRS+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60E2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763443913;
	bh=H5Inm+WVuw93CLfPU5hifbk5hrIoA86Nco+oPefX4Fc=;
	h=To:Subject:From:Date:From;
	b=UHRaRS+ZDRACf4kcEAuCcU3AoFXaLvGi4m8vEMfw8ICq+T33bWTpGHn+EiG+MAKKh
	 +iEfP5dnsrezgI/+I0KKfIeu+PzwxUT0+cRDMpuhMyTG/tDHYiirRS5fnd7QfYbJHQ
	 b4j/8TgIJuNhe3DH5nuOTxmZoxSTEHo5Qt8fzLrCSDwIaFKEWTRS9lHb/7Z35c2dQk
	 DyXyMS0VS0KMoqiQRd9D/8h9u9vA5+n3JwSwSKZGJdOa60qYXC4AXlmwL7xg68Ap4t
	 YBhAzCU2Smj1YoIZVpe/MslAtMqPh/p4m3IAKNiIjjD6zz56K86YiH7He4rQNT9lSE
	 1bfAmsKb0mNIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2BCCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344391360.23706.7536302541264849818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1cf122e500935850913f9089b8632d5ad6d2fbe098ba612113504b9653ace49
Date: Tue, 18 Nov 2025 05:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763443913
