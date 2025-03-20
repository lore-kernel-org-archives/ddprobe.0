Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD4814B08A
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742483994; cv=none; b=jmSa1Tbjgzk0HzpvkoVvuqcm+s5/2usEptLDyqnb6TXTyN0PeopeYU/XCmHdMwahEMQmlu9KBuOupSgP+ubDszBn52Ca4mBAKvBJA7U2DFdP6gsTJa7K9LNCQK/+PTdzBuJn8sEwt2v/SBmf6SL8jGeVMbVILX9ucUkGUid03bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742483994; c=relaxed/simple;
	bh=taw+MfHteng+j2yyaSuiQ8yjja0Y3tqMk3/dwpCcIlU=;
	h=To:Subject:From:Message-Id:Date; b=Du2PW2LsN7/t5Ajd3MPNhnWxD6J9XrNASdsJPhYFU1QHLVg2WoD5KMlvN9ZvmJwA4ks4AvKkkXGlKYsrk5AmyUWgfHvMHyCaiX4AKCZt//r2g6by198CjpVRHQ0VBWkIxZZ6kcViSUQqBRXYFJi0izqMYJezeFB8qU+P6Ji6n9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiAXBU4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiAXBU4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0724C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742483993;
	bh=taw+MfHteng+j2yyaSuiQ8yjja0Y3tqMk3/dwpCcIlU=;
	h=To:Subject:From:Date:From;
	b=EiAXBU4UwesVeUV2u3AlwZQVFTZHqY5A3KPxIiY43vPXSPxuBrEHs0BlmkLFKyAbA
	 qg9+2xpBokX64KCbtZALejPizKLUg/gMZxHs3nuvp/CRFpT0A7f7oUnHYiP3f9sorB
	 20gtbs8M672mIuU336ERMZ4XlxzYJDWuMcbHL/sm7g3tTz4M90WYUcMyEUxF3nW3yu
	 E4+qUFh/RkFChXx5QdDWHFB0O0TvLHkeRn4NySl5Xvskbi3pvnaycGeeQnancXadfA
	 +IgDDvhLYnNq2k/Pn03beU1ntn9IGoMEQ8iqKelMDrb5W6hjIbGdw+0fhWv+W5rW8y
	 Xkdw6ujwQ4aDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96018C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248399359.16616.10331681088802771756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144ace609dafaab31694374a8ebd24c25560cc7a78145776bb67da0dcc02ad62
Date: Thu, 20 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742483993
