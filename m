Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453CF38A728
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770749034; cv=none; b=MzzUrtE/jZPpPBsaUkgXjMaOtxU3xLdtgY2azOj3iKau7cHSVLJYMMEOKGOFIAEN3FX1L1vD3eZob1Tb0BC9LdtzZIvIuam3qj7WgB3XXXoWyCn5u8p4dWt2UAsZoAR7K9e9dyaGH+z3o8K0ADa3zDSClYtxj5RTl/3WjcASvhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770749034; c=relaxed/simple;
	bh=ewzJ02t4JiUW31PXrBqUUhA6yhULtb7VZR6F/NsiHGA=;
	h=To:Subject:From:Message-Id:Date; b=k83g4yDuq2BHZk4B6TyudNlveZlS2DcllNBXHqWUfaQEaNN8OtgNT51B7SoLtzeQgT4CK8cdj2UlevT/pcjrkw8SFLaehgMD/40h+pOmqof9ske0Onfw5sOZSUmL3Y4Osg5C6Kp/aBhbP9GQman/QemXowvt139FOSWZpsWl2KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1o/wWfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1o/wWfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6961C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770749033;
	bh=ewzJ02t4JiUW31PXrBqUUhA6yhULtb7VZR6F/NsiHGA=;
	h=To:Subject:From:Date:From;
	b=r1o/wWfkPoSb90G/y4AkjLdMEbRXegvTnN8s3wJtaaiVTl7GbKz7PKfNxH0pKEBSQ
	 DGr9og7QSnpKd5QzLnW2BoC8Fg1em95S9ur729LeRrCymvRbBgRKTkW73VPXyRSnKX
	 LVcUMO3HyMKMjOykKYfRx5rEdBNGVZ674jzd+T3GuA40TOve4RSjlCYznca8bgUUVe
	 lAhE8b3PNWT466vZb/18p6VW/sQaeAXOnsm8MrgJjbWC8T+NIkcmDvr+iAA+xaAhg4
	 ZZGGGNJKDGXiCHZ6PUHsIZZzv0GWN0xOvAyPHJgFjpULdcZPM2QFrhdWG3Toc8eJfi
	 E/axypAAI94mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FDBEB26F7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074903373.13412.7511482685690823933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac09abd87667e60abecbee980cc26cdc7bc150ee6e4929be94acf843defa303
Date: Tue, 10 Feb 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770749033
