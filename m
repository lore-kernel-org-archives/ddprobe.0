Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06702BE7AC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747153793; cv=none; b=lbgrVU2Y+sqpeAXPLOkKfctXNH1Vbtvko4oMYugL3ntXfCU/GIV/XS+HVAPwRvcMQPxP9XWH+uCHBZX1ODXF9GUZKmoA1SxClLzGNyhprr9KfhrCYBNZfUBXRjig10ipyCP9hxvCY3gldA2nqQtfNpmjD/7UNWoEm2agaG7OeIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747153793; c=relaxed/simple;
	bh=gLuIuv12OVNbiNahKQFX3SkPQj3a16AGVdez3TH8WFk=;
	h=To:Subject:From:Message-Id:Date; b=FLAXELEBPsujB827O7VNX3AY8pTz6wU3NYUWj1nFhnkAdJ2+44fBrR1YD2KB7Qcl5JTXVbDf0IRx2/2k3YmABA5Gm4xiLpHkqNFX0hD4tuTuSzzVVMJstyw6Wq+RAfbvNpDc1q3MnF0RGK3yDuOPc6t/Nq+7LeKqNDJ9e0CLDp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTKad+6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTKad+6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E64BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747153793;
	bh=gLuIuv12OVNbiNahKQFX3SkPQj3a16AGVdez3TH8WFk=;
	h=To:Subject:From:Date:From;
	b=FTKad+6f/IYvAuH8PEjK1ZuFKABzLJCKqx/xb3gTnliVDloPd+KsAwG26eBJxEIH8
	 ZTuBoyZGJI2rt5jLb62K7KljHNgNB9Ak9sYk6sYqEwoDIuKEWiV9siA+6rzHTCbyAy
	 64yhjBw8/ehLAkCAD/6FEQ9nnevxKpHaTGK52kCrz6uKmcCKm26P9cUo7le0gtJZvz
	 aJZMZ9hYo1dwUIc8mbsr0ZWNkKg3nN2ElG55HEVST2UcnGLDa4t7Mz1eE4pA2EzwwA
	 e3c1uMh+jhqiFdvfwyLB0Qef97eO65IJ/dFa34/sTWh4/WX3yf1jCtezn+1ajXSRz8
	 VeJ7ESY7hevgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F850C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715379357.16513.16628826301210032654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da6d5e478dd812bf73774e95ab5439ac7d4bfa49ba21770039bb405bbc3cd60
Date: Tue, 13 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747153793
