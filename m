Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F80F79C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 16:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE381C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 16:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676564526;
	bh=zWqdM9SZ/Juj3BMq2x0JRs9lUwgRmwYIyfAHPk/y7nk=;
	h=To:Subject:From:Date:From;
	b=rJOW5rDRCy+ARxRyfwwXUm/zwb97ohH3Dd+uuQBVoQEovCVGq4pxR3d0BLHcLIlbZ
	 He+w6sdzT400XJ6cizzjglnKfKoBJqvgIuobqO5AkJApeKr1JXKxBocw1DHyfc5nyf
	 Gj3H5Q0A6mO+2BIMB1StqQFjYCI+YaloPn/kXRvrc0g/2ncGYzh+4uB7RlSEgdkT88
	 QKIij6nB8kKUdpBl0eew+mr6ZgtRR4zhKBpvw/Kb6k3ccRvkpXAdeD/KDINx6lFE+k
	 V6mbhryx8aSDGGjz9qRO4G4OmhRBpS6cIrT7pqbOY6pc4MAQ9QOPlKBol9Cnh2Sbyn
	 Fc2YrbOVIiKXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C905FC61DA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 16:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167656452578.8146.7504331598492390978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b475cbc6bfe02af528077be49a9c6d0e54710a4863ad4fd2ae7d2d162f21b595
Date: Thu, 16 Feb 2023 16:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676564525
