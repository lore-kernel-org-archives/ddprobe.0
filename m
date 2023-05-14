Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4876BED3
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 02:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED54FC433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 02:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684031886;
	bh=KH3Qy16Si8p7Aw5kucmd+B4qfVvs1/S2IfyLawS9yuA=;
	h=To:Subject:From:Date:From;
	b=LPiHM+FQPYi5mrM6FgS0vx5sRA9BKG4LpxOCCorWFGSSQllwqZV7an5elbSu4awZi
	 eSNjN9AWws3y6a/T+/LNC+jkmZKaPyQHIROSk+jaGaMik4z1c+8IXsdfRDJtST+N75
	 FLqy4RxJBRDS9rMrhTJfniK4ejW3GRAve+0iPArRgiuy4/V1s0YtwRo5lMayKYSnTY
	 R5G5coF6HYQmzAPFFpmYm+d9zmsIMICc29+iO5/E9dy/4/ZtZnGDpDP0o09eJJn5T1
	 Bg+cVYyHDE9R5ZoqZDzf29dFTD9hCN+GoWhb8R82FZorh2lpceWETTTtQSDKLQzfYb
	 +QEOuLPqJxWbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB273C77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 02:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168403188578.21073.5695027388796461650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e6fb660cc6bb1278ab2023e035660e812374e593e6db384828921a98d43d74
Date: Sun, 14 May 2023 02:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684031885
