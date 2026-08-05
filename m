Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989EC3F1ADA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785964834; cv=none; b=PsqcBPzLEVGn6M4HyxYEbNC2Rehi3krbX5sAH+xOHK/9wKNYBwv6PkRaRBMf5PkSQrvjiZ78iGEtsfizqU1uv+DrmcVzU8rtC00SwZxE1svtgS5qYzJcnoWcF5SktozsY6nnvtyCxFdifPE2xiekQhBVUriz/Fy5queAoNWa53g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785964834; c=relaxed/simple;
	bh=tR4tvvd1PbCWXdQ+EbTKnf/mx7tiAchh3NgFs7/iiOM=;
	h=To:Subject:From:Message-Id:Date; b=YNuuyVGG5JUWWuKq6eJWAS4rfdoiq0Frpa+rf0WlIJfyfP5Hg0ZFiy625EJhdXf/L1D0OpxKpKwV7Qqp2kZV0dcG7wUiQgo/ybpT4YPk0rMpZygreNvQ50rOKGItZnUkxgGOlHxfD1TQ/OgzUN3S3SJr6jHR1KHXRUNeWhsgZS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTfHX2AS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTfHX2AS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C61C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785964833;
	bh=tR4tvvd1PbCWXdQ+EbTKnf/mx7tiAchh3NgFs7/iiOM=;
	h=To:Subject:From:Date:From;
	b=HTfHX2AS6hoAJjjj7iWYMwLOTu86Qh1kFddqHEZW/xza4x0y8oSha+jVLx10MlMlE
	 ZjYl4Oy1Lay+Vu9vnDehskC42ElpNbn5d+VLoUljWOv2mXKQItKdFCyyCC8zBlYRbB
	 lUxbKY7ZM7DXBhwbpar1F6I6qTV1h05te/29UD1es/WXUMORpCleivQZmkiddvhNes
	 C1Vmby66S3gvcnfI/S8ygCD4Q/w06iZes1aNtQ1PoJn39fn4HMdsWFm5vkcmFMPoti
	 W1e4LVa9wJGrRl/eCYDaMBONx/QLXQpH9a52paLACfCiweQu/5n2LLD7U+D2xy+hdR
	 eZuRgC6dEEnMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBAFC55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596483368.31295.6319569445985197956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a08117ef6866962e536d67df0e09c6d732009173668a71607b57588d282196
Date: Wed, 05 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785964833
