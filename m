Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DD24A3C
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757881194; cv=none; b=WugUVH8MpoWxmSmVv7y+/Gx9XOMOk3V77JjorBg4TvqkdEq3Zqc+9PSacPKDfbrCbQY9lK8/UkgIvcJmd3IisnX871iW2INuZL3KtZeZhQWaXwKE7LNIW5pgpOky6YG0oa1LUfrWMaqkKkPl/k0MDz7Wtvf2NK22rga+3RhR2u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757881194; c=relaxed/simple;
	bh=rVh/qiWc8XvxXOoHo2RPe6GS1qB3vhTAE+OFKk9fK8w=;
	h=To:Subject:From:Message-Id:Date; b=AWy9POU4Wb3t60WvIk5jzWN50fptPZLCISDCEZhzWBNFlfkD0/+p0wktfKEwsYcjj5BDlzatXjUgyx++5/NKpE18GrpI7jyD3VhpDXe3V3jlSKFWdX4WHM6JhabqpUdrMpeWwH4G6rp64kPxnEkrpkbl+BBJLfUfh4V1F+WkcyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3LKs6hG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3LKs6hG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD976C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757881193;
	bh=rVh/qiWc8XvxXOoHo2RPe6GS1qB3vhTAE+OFKk9fK8w=;
	h=To:Subject:From:Date:From;
	b=p3LKs6hGzFbF7B2nmY2PLWO2qCqYxiwXJ4JMAKYaOtom7Rn+sGZupRm2mUxWTsOjT
	 5N1/J7Hp0exU198llfSPQ3DPtMQOBcN7/7e3al1h6rG9kxjiFb5mr31Ly8dXgCsziX
	 kgmsknbcsunorw4Y3tHU64ZDPrTL/NFJw9p+0/pD2JGUpkxOg7Ij1sUSX9TWtEzepv
	 YFL2JebaI2m9mvcPR4Ja9KL2KgzRGxEWejpmgLXX73s18bVQ+0ajlOwfDoWX+igtrx
	 ZMKn/CNM56BddSezqbVfwd2BDJI4XOwrXc9TvsakxX6YcHtsuiMXvaOnmAo4jsD8a3
	 0Oh7XMlpvpuLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99141CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788119359.17688.7944910103161973748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6df0e58390d250735d8ccc54b4a8f11e52645360ba7818310734c04ff782a90
Date: Sun, 14 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757881193
