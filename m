Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F29243AA3
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716584603; cv=none; b=obWGr1YEFmDY/z7fXZehZoMFSvnYvccPqnK1DLhe3CJinBQsbe60Nh6uMTVgkvLlQwE2Q1utTrgOH0CjWX+PrOQ7BNvcyWkaAd6MfvxbBTCFT3Bg54cPLO75oGipLqoq8hyrCgvgDpbpGwb/3LKM76kHsEClqjiwKGRrcBZXyZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716584603; c=relaxed/simple;
	bh=gowEzJrY1kFcAuqnMuGxvniyOZUHU7GPESbL2AZyg8Y=;
	h=To:Subject:From:Message-Id:Date; b=skpXKAm0FhXi3Hkm9Uaiaad0bNwZeALhnAjzWIYkXSClDNVDpG6vZwp7Rj0userneiL9VJ6MSbOD6m9j3zKJtXeKzBjJANasrsPH/ik9QRUAaEFJoKWDIP7IdpZxDZ9kVcEKtPLB+kAtHnMpwwBpfrwIRozEGwxsoQoxtohJMZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXRYF1Ui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXRYF1Ui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D217DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716584602;
	bh=gowEzJrY1kFcAuqnMuGxvniyOZUHU7GPESbL2AZyg8Y=;
	h=To:Subject:From:Date:From;
	b=AXRYF1UiuQDcyvUda3IzCy+X/YGkOvCCuo6QP3TP9BhXJBwFgSVzsFmn4/Pe+iYlf
	 TRZ6CM7/JLZYTRu94kgku7SZOs45nKMzhY3VxgGlNpDPdBN2XzgJYs/lXag1JWuukr
	 IKFDjd0xhrgeX3cpNHrV/2QuTPBfiwu+CeBoOSylfV01Uh4NhsjeOBdt88sBkkxS6c
	 oNoQh3nT+GHAzA/H8+2DHRO5rwvlPpGCLSgkjDg56lGbpT7R4DQVfoLZrb+/5v3R3q
	 kS5FaCAizbWaLiKOnwW6arnQibi4psAKTKnrKYEmrQ6bhXCWbihL3G4xSVHW/E4aUw
	 Xx6XiUUlGpzvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2DDC25B79
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171658460276.7892.8856658262374468490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ea998b5b5cac016fe7adde6ee19d187881df7c61139648377cfddef59887cc
Date: Fri, 24 May 2024 21:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716584602
