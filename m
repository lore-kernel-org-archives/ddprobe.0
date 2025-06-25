Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290122D6608
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750876194; cv=none; b=EL88qs2nzWLmwGW0uGml63OEWe6HNYzL05X8D1x8LP6Ix3gWZBm0A/g9MPNHwd5n6QiX69hgzlJv8Zu1k57zG4UOqww+7t0z8+lYyB/Sh9VtXfM2MBmMxowy+3JSfZBP0UOWJuNAemGyU+fmkIh83QwKQ+QlgT9Bm+w5Kugusvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750876194; c=relaxed/simple;
	bh=dgM9avh6B229WJqy/QHJJzPkwdPTfbqzlGrV9qkrRgA=;
	h=To:Subject:From:Message-Id:Date; b=Us4N/F+6YV9JMcrtYieC7H8C+qrvi+zbnDvxxJAZlieVsXhSNPMuw6huLxUVNzpL3kqp824wy2NPvBLdq7Pg/rBIqI+kh2T2D50NcOMRn7b6P1eAbaAdOge3fMT4dcgTq01smdi+z9M+Qqxn+c3/QhN20SftswWF+Bs2Gzfe2Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGT4JuoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGT4JuoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB9DC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750876193;
	bh=dgM9avh6B229WJqy/QHJJzPkwdPTfbqzlGrV9qkrRgA=;
	h=To:Subject:From:Date:From;
	b=OGT4JuoF2OPawk93AJLKRvBTeYDqYQwmfCn4gB3+d8eY7vpe1mmnQNZttTooxFKeB
	 9Ui0oyBX2B1TlbZYO9eAv3ybRkFYF3qus0ondrY5MH+ma/Jw7BljrbvOalMyQCPmzL
	 8p3tNGhEP7nADskksXC+5H1s3jInHwYQwFegBB+jbpsOjiJS039NP0CvSITPlRqzoL
	 v+9qMeuwmWp48CCyGFXkrSHZVcd+7PHa5rpQxIdGXNkBJf9v4SyQhjJTy2gIU77xS+
	 qahtcVdA/xaD5DZ5gzUYaJdhz41v9njaga4sUa7GCiwrvUnSqkVm0+zVxZykin+5d/
	 7J5GfvSdU5BFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F8C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087619358.20561.6393175963611958103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c0e3abec9993c9e96a3d29bac1646990368c3648342b4180d8c3f84e424d4c8
Date: Wed, 25 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750876193
