Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E501B2900
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F5FC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670153454;
	bh=U2C6DObiP1R2Aidbh8KNWTqz/+R0GPKboSsn17z2TOM=;
	h=To:Subject:From:Date:From;
	b=cCl5Fp8kklSzDtIlHAYAtm9OMv03llKjOys2p+LMj/Q5ICvMTuu47ZCgnjQTBkIyM
	 wdmuzggDxjK0j21Ou83DSu/m4/PdIdqjHdbBjiOsGKjOoYgEv+rxbXoMzxTnanJhZK
	 1yYx5zTtTGaGGOw0516lUFP3iXmmI8qOXf5GJQG1ZaSMC2VO+7CKdm3fU40fuJDW9h
	 qXetK1xkuH42fqmAMDXjYbh8EGARLkYASSQ71Hk3bcSbv2rip8IvO6wAoCRPQeWwlr
	 2pCeiOx4fcPQ1GGjjbkVYCHzlN22/lipsqSA/D+PeoNCw5OGYPLhZQ0RMuO4MOVVAU
	 qt5b/dj88MeYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5661AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167015345434.32758.841646102638748995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712449985b0f3b257c0d95feb2567849f2b9005d9b8d42f6770341ab485e2084
Date: Sun, 04 Dec 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670153454
