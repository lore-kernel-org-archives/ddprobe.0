Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8C017992
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4llbNNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EB22C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699988296;
	bh=hNSz+IOnpCY/PdEOP5L6I+iry6WOmPt6wkEPo1lBnCc=;
	h=To:Subject:From:Date:From;
	b=q4llbNNk0aXdA0Dr0fuQ2khUZam9cqfORzQ7g6nnNEY17HjHASCWyfo2lmsKCRDW7
	 kecOAo21RaE4NfwgfDS2Z8N5ksfdgSp88WQIPuT/0x6Rr0KqA22UBJroGqEvd5MboQ
	 qTlQf4Cwjn4/8kk4R+MNKfHIGyqCqJU4yhAJTvyPwcEJ16/Kmy5jRcDlmybCU0cTn8
	 gZcqmUy1ij5x5s1edj9s1PxQspwM/zVEh2bKnLBY2P/UVXS0syaQ4kAQrgKdGDiEng
	 Cb2ddgBnhGnBB38SHBLOTPKjK7WR6OGuS5Dme9HZAtoTiTH3RJwflcCbAG5iD94UGL
	 F8CezZB6E9ihg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5BBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169998829643.30217.13020802069961789358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877f2ad78279fb11c7e8200a1b3f22b6e93513c4fd5bed491eabbd800702f510
Date: Tue, 14 Nov 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699988296
