Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C6623A3
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78527C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673304087;
	bh=Spv0HXykoUB1aIT4NGGHgqp8FElh8PcuxGEuH3LRNzI=;
	h=To:Subject:From:Date:From;
	b=Y8pQqLqmZSKHpny//n48A79x1AxLiVYDdaL5VH5f/FjJMLADDeZ/933o9XG0TL/1l
	 KMqsvZnP895MkFI6I7DnkWxdDODtflHOCJmFtghSnJ73rtP81p0+3q3+QKnINQuWQG
	 nRxGe6ZPsocfw0m6lI865Q/hr03B3mflEHDkPETny2uYuupZiHWxMQPZ8rVnnTgnwP
	 kSyg0IK+o1zbg4/o5+2iiVoUmL8iHF2x9Mmc2gcFu0p67D4WXDXcmFD5J4Qlh2aoGo
	 1+x5VfNVQ+bvN4qMfxfQ/QCSWPFk6us/ubyP2yQup8tjeju/1kfvHb+4x8Xl5ZJW56
	 AmVIc04RdElEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640D6C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167330408740.2760.15375754605800906950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c170b3b3812f87988ed6d8bbb429f7615b204692294114d67438df6c060830
Date: Mon, 09 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673304087
