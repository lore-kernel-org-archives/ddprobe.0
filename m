Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC863596D
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757723993; cv=none; b=LIDLjtrAKxnUtc2uxGt6HkRPUE98cP7Xvi/fCjc6I9nIHziqaPfPadVG7t3Ald6oySUsjgKHLy7GyPMIIzF2OT/jMVTbVGNkFuw9GjrgcL6gaK0TA2/KudAzyjOwNJph85P0oAaz8UA/b1MmTxIYG61HkinBOgQkZhM3Rl+CUG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757723993; c=relaxed/simple;
	bh=cIPpyPNmXCx/oIvz0JSC90A7oQPgc8bRASR4wnHPPq0=;
	h=To:Subject:From:Message-Id:Date; b=DDPOYcRm2hC+kv9iDucNuHTCD5iGSYOahGCeFLx3wRr99VXXC3S+Q2cwWBqXkWTzezxc2Lknx9RFzZqQsWHOCFebAViVzMaw+FRXXfmAlP79XotL3bM30XDpbd20vBq8R+pYSNHAnTkwh8qJmZfTKWK3dja4a/WJZESs4/eVB6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhRegk/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhRegk/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1A9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757723993;
	bh=cIPpyPNmXCx/oIvz0JSC90A7oQPgc8bRASR4wnHPPq0=;
	h=To:Subject:From:Date:From;
	b=NhRegk/Tx5a7MW8LT8zdhf6qnLuy5ESJKArai49cibY2ykL7ND/NLs7qEoX/ccDQr
	 Pgj0EbvHiY/Vz7YDDv3wbojTWmpVJy9HiaLzQhT0eb3Q1gZqc2sUtrlBEKwzPvSQCr
	 O7x6HXkYTb8Z981FITTldFvnTA/crB/O01fQrlQ3YTyEbuLVLePKFQuJsmtezsBTd7
	 31lQa2wfoNfepyeO8zlnkUR5aEXiJFUbBvc8Yxs/FQ+CXQzPp7UXztdkazXI5F563X
	 Qa9ddGnl8JdLbtIxcuWcAZ0HHpB8l7wM6Y9VSDPa+wWLshreISB1hs1+sGF4GfuUf8
	 JP5RK72VbmTIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F87ECA101F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772399358.18225.5317332452139927955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2741373454aa9e331054093fc50480c74909f913dacffee5fa2350772a94ce
Date: Sat, 13 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757723993
