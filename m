Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134ED284B3B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767942234; cv=none; b=PntrRqxzblFLWHT8xHBTpMZOZfdmBI8/rVaGrSgiCvY6oL4YY2aZibpSwfh2k0q9co0LVHOFDZEJTwde1BmPCeadBIvsFhgOZ1bv8OII8CNpTJEOdFcBIS/qkgvAF/dQrAHwf8vrJ7B4ZPfgFptpIgPbU2g393WUoJ7JOkBNwR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767942234; c=relaxed/simple;
	bh=5Oy6+V2/XcNbVBJzDbraJ0ergfzueuT/Ex/n+Qw/vuw=;
	h=To:Subject:From:Message-Id:Date; b=dYxcJuotVsWMDw6/qU/Oyy/VQp2Tu+AboGj7bglAOPBz1pDso5y+MWYePcFSPH+CzlRX2GGy+p+6HttDPFtzGQWxXw0weO22iStmlih96fpy1Cv6MmsssGf9e5gTaE5CY25t/pe8/d1gdFQ6+D9ur4kJvJ1KaGs2aNrqEoRDjLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEORt8V2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEORt8V2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A283AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767942233;
	bh=5Oy6+V2/XcNbVBJzDbraJ0ergfzueuT/Ex/n+Qw/vuw=;
	h=To:Subject:From:Date:From;
	b=IEORt8V2ELuFutNG6fqPYs932M07Ldx+OjXYRb2jH0/Z6cXrr2a5Y49uh4b6Kz2AW
	 nwntolpmWoSFTomRNBdKBbvFCqzs7T6UuNtCg8MTdIVGdJsTxxw5DS9+wejenZ3ODc
	 XzXkm5XqpW+Q1e3MzvejbiCq/TT5plU8mgbo3KyBU/76ICgfLRtG3pl3mHtKos4Zth
	 Xg+csv26qHRI4Iv1KvelFf7+rKsLwUJ2iU4oFrGcbR9wxqqKpG534ynixPaKjgvFwU
	 fQAwrM9y+RxkoFCMyvb10jtEicZTuUCC/s3Yy1qLCSEbK02thTrCauFHh9Ucr+55Fn
	 mWRVQX6UiCgoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FCD232C8
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794223357.8949.499199187516919848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786ebee9d26ace06436fef75f7f7c91b237ab18431dc62b6b3bd65e35873d5a6
Date: Fri, 09 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767942233
