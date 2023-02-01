Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F2F882A
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 22:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBBAC433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 22:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675289765;
	bh=H9fQdPqO2HBbP2WIEZtVNeFnH5/ud/B4Ljz+VPscKm0=;
	h=To:Subject:From:Date:From;
	b=JNzkwLd74au7vEGGQqRZKk5ktZRlIvh342/1qDTFK7+uVPcjzwIifLM+66MJqB9iu
	 cZI+sai7z+sAyYKQqdJ2I7mfgkJx3zEuXcaxZP8z4eGRp3ZhYyrmpAyvGI4b2VEbO6
	 Lo1QwGOiCZZunrFdDKIb7Vz5ALLMCbtyU4mGvfPh1XAp2ynhYUSnQqT1/aReD2lxj2
	 a8ZToy8kRqdyKaxKmypTgVkncvTtWBpEbs/Lm4GKzZslM+oF8JzPaQTnVdxD7DmFBl
	 n4SVQp8JedJFwxfQlQ0mt59b49A8AG6EFoyD5Jv+Rdd6Sb9dDmwQoYppN2FdjKGf0y
	 hcrY3fD6ZNywg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C171FC636D4
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 22:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167528976578.16226.16051266837564646763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4dc2c703c4f96d3cda3ef2799f4d9f0237ae8951964f5d5dc5e995da399c0c
Date: Wed, 01 Feb 2023 22:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675289765
