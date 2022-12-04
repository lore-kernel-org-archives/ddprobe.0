Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C197C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FAE4C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670114454;
	bh=gx8wlnSCJ5albhXh3eUFTo+eYnEGyidd2lQX+XvyF/I=;
	h=To:Subject:From:Date:From;
	b=iMQ0GpOxvnRpYUkyaX5msesJcCdIgLPItH+QaWcAMJAEY+5GajJV7m7DHy+cLPORk
	 kRvf53CFYldd6dl/L3Hc/cFsXK9SzsSr7GhHSuWfVqIvVr0WvBOYoZcBBAMLIHIRnm
	 yopNUeZ8Wn/Lte4B7w3J81SinuhNu0R4R/5E/i928CAVilh/HdXwfG9QnFpea5TwDc
	 h/h5PX8G3quT3t08/UPiLdFrcqnQyFD6NeRknxVO9P03VuhWFTnQdXjYnvD4OplZgK
	 4MyXk9XBkH1VJjja9BFelLYyu4nTslRyDyZ82O02uhcficwI/xd25G8p3xlrJ+R+8Y
	 PnrHJYK4i+NiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B60C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167011445433.18583.10835059791435292845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6c400f3c736090abcefece052d4122861750ec14b0f70410ff02f68bd3a590
Date: Sun, 04 Dec 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670114454
