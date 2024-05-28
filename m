Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7226E182B3
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716871463; cv=none; b=gHyFst2S6OoUrb098+/s2VHwjhomXG32Js2lDSDLM64DE+MLjIbfKeRr4KureXhymmLfz+qN6aB9TEq5osxma/hQ10v+35RHrQkSurUS0NkRwUhp2xDf72joDrAWFVqe0P0i1ha+EzACyBVBXvyWMaGH/OvYX3fSCn8n2zcN/aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716871463; c=relaxed/simple;
	bh=bywCaRbjE+ZgoDy3CfgMaHHVIqCt/Ae63aiHgYSJs0Q=;
	h=To:Subject:From:Message-Id:Date; b=RgAqrhZOrMDI9fZiJc8ZM5hU/e9dlPMPmImDOZMdaZiOSKBH+JJHtwDzgvgGqFgvGIXmF347WcBZVFNQaE3ZjQyRiJdhGboKqXd6kp+qqwFpLTlPi3YpPsaYENfruh1UedE2xmu5wJMj+exvkY4Jsc6q50FsKOUUtlLY+X7drwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzii5pVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzii5pVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF05FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716871462;
	bh=bywCaRbjE+ZgoDy3CfgMaHHVIqCt/Ae63aiHgYSJs0Q=;
	h=To:Subject:From:Date:From;
	b=uzii5pVQxNRK7J+ZotLLrx9C1eKB7A2SVcSbA3LJjv4sksUo2Krl7pSgwse9Dky9K
	 3nEKJDGofWpuFfpK6PI9VsRuTJm3Vo0RB8g+ym/Vqrw33wVNaxFOlbrjLv59ITGitY
	 yWAVlQf5G1enubrpm2syn3Gf3WNnE/iItqZlMd/Xvp/kC7W/Ip4+b5dh/+5FVqfe8L
	 ELbt7RO2JvOFQk35u0IVIGiBJudDv7rLFp09jC9SWyXHhT+dYKLSIAfoq45/ybe5W8
	 Juh1BuFSs1vCLK1Cbj0pMq7zpCQ5dL9ieJRSQ7wgYKKbwdbBCJ/TbyCwFUSiHV+EVI
	 Kr+h1mq/cpu7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC254C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687146279.27583.8058891587566868298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661cac8c859a8f0915c86ef78b3611237dc462ee5126e7ad5c983f2754456612
Date: Tue, 28 May 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716871462
