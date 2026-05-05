Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6F5481FB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777997854; cv=none; b=hCNgXnhz+UJM/PcvT+3DHeX+vwPzCB1OWzVAhv/mW90u6OYgRkF2UJgvJAuBF/YEphkzknDZJXNCWnrbHTA1M9th0ZK8korbu44DdKa0jie+Z78WQ6miSOOvkIST8IveJppkIWvZip+QEtbw+RHaXEG6S/nae6i7SnsxUkB4L8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777997854; c=relaxed/simple;
	bh=ZdlV/XaWLxdKqB3aO3bv8/t6UgTB0j0L2Atb+0lluAU=;
	h=To:Subject:From:Message-Id:Date; b=KLEFwagawzBrGBFUVEV+kaa1TA3lw3ROB47ZFoCn4O4m3NR2RYF+mNW5uFol9TzWqaA6rO+zvceuNFIdSt0+Pn4E7KXZft+zIzy/oMNDZZx/+7x7fx+8HTxVCOu4H/gZ/vDbxDNgtr/7FN3lwmTVEygOBcFCP8VQ8o3MJoXSUqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3AKvODa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3AKvODa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE9DC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777997853;
	bh=ZdlV/XaWLxdKqB3aO3bv8/t6UgTB0j0L2Atb+0lluAU=;
	h=To:Subject:From:Date:From;
	b=h3AKvODahytc3+ymlbPU96ff9U3GLdosSzVnx/yMb2eSHAuoD66vsOiB/TgPUUuqI
	 tuvjSN9OP3jzpiErdN7rdqTDU7jQjeZap5yjR3hrM3fntLMO+k3zGNC3SHsqxM1szF
	 aPzQRdyoHgxdU7GmoOw0qtUuazBdPrZMtAcAkomo8moP6T+okuU9SD/eEhddQoiaoZ
	 Gvquco1BlTRdI6Gfcex0QI6RUvRHO9zhLPBdi0GZnJogGU/i3/G6xfcHgTWxkt6bwo
	 rmsU1BqAzcP5aIJ5B8tkBnJ2rOzOED56idXZQp0OX0bqJjtzxMGjXHfXCDQFi+krZy
	 HKpHcIBW+/9PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD43CFF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799785369.14260.7185664606996721440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac22b41c36f532f097601de90dda18d96dbca8eabc3bba18ce5d25683d6b79a4
Date: Tue, 05 May 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777997853
