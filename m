Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D6D235063
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747398593; cv=none; b=Ykzplg2iSGu2iwA8hpYFwJ9ZP8NeCdSgVdGk6f0Oohs5Xiu/K8d5pO+blyIS+1sQgrq+xN02CDkSALen61aNPYubYuQnOdodXeC27vV9uOIi/pgF1o4PoWCq68Knh0IvxGjgkf/FrpOzQ8AkckN04W6gVsw9pd3E+5C4M2Kv/cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747398593; c=relaxed/simple;
	bh=6KfWpXeB0IqFT6YryKTngSwLVkeiZ6ls34Cop5bw4I8=;
	h=To:Subject:From:Message-Id:Date; b=mTMvtXvzdItzHHRdazkHqGLmBgETqGF4ovT2TALemNazPShUtb5yb/3dRAriQslz+vGUJrTpFNdk+/e5NQ7u4vko7Git4pkNPtejYaNaAlWcub5wkxIct4o+w0SX+vyNNysMzQ6wb4VKkg7jcZusXD45E6f8InTONBj4AzDG+wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSnD2LGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSnD2LGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9CCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747398593;
	bh=6KfWpXeB0IqFT6YryKTngSwLVkeiZ6ls34Cop5bw4I8=;
	h=To:Subject:From:Date:From;
	b=DSnD2LGMYHhnqDdH8+OsHiFcpEwgg6oZ7F/UqM34XZiSzF6pDahm0GCrRtINlw/KI
	 3riiDNwY/GC5M0ac/Q+VQZEFwLgq8FCAegQSOAL6JtfjfkD3Rzhk2khWHRyf4ZOrMn
	 1PwO9JtVJj81LZM4YQQqxu57Kn82RAUCdKUkQilX3uw6znlLqCWR70KM2QVcH4NmWm
	 jRrt8yf2KmHuuZ1wePdxxJtzxHz19qd5d7Wgt6LqXks61cqSt+b1PGlBb0p8MW1o3Z
	 CbNmknfE1RwOUq/P6LpXS/bMnz87qU5Wo337s06UhlucT0XvS1EG54+TS1Qj+EQXGD
	 4Nd7ZsCR2JcsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A55C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739859359.10589.16831645727609620950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f1b16622710d433e3b3c847caba61f21c0c821acd7fc5fec7891b67c78341d
Date: Fri, 16 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747398593
