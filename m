Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02602F4EA
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLLK+0QF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE5AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704571696;
	bh=yy3rXIxEbJdZ5hrvmMypMSOZp97uZD0Zkaela7Kn0Z4=;
	h=To:Subject:From:Date:From;
	b=oLLK+0QFhquxr5j0pyZZ7YcKRSJK5Yv6gcM4mcO7Mwx29BhDOgJ3F3xRns/UDQ9Vu
	 PaQGa6/ry+gsCP2Gkcm0oebC4g39b5Ah3shJ6uPhza4ZKkUigcADEJ9pStbcc9XMFZ
	 Vb1y2TaZmn8hPK2fwr35UPVyWXl3mO8sNU/yEnExjzRUH9svMpBLHtMefRdGRWh4S3
	 4jXrZyn5565Mf7/JTuL6xxZEPo9X4J+zX7d1yG+sz9979vXiMOvm7oi7aDGQrg7nQB
	 tfFfICDfGdbRueavnhZnfEKvb/PWwHTVFpGnPGZbPlJabGl0EJD5rTefImupdDZk4F
	 EXpeo37D/UI+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F53AC46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170457169636.8108.11517688285300789113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18100fcb4ccfbf59fff578e3fdee58f2b44916baab3ef46a1b3a4fdbc7f8158
Date: Sat, 06 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704571696
