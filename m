Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E609315CA7
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D1FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667034054;
	bh=BcSaqsR3Rw0pSVGVQ2hbga0ETCLmH1+NWM7UL8aqozc=;
	h=To:Subject:From:Date:From;
	b=bLKx4QC1N+vj2PkfsaMVa0rah7V3YsSvLv0Xckm7J6vJ3IUuyVDGG6Z5z7m8Xho9V
	 kmYzlfEtVDC1u11PGRgaY9w1SWiNO6PGQdwnit4ygCMueOj2Fv4hMMqhuxYNkoW2R+
	 dA96CCLau7svaXkecndCvYrZi1BWAqC9AIMnpJfq7SMWQVTpBMZMteERPeDtEkMDFk
	 6FrVLjHGu1Hyh6LUmdplEjLp17EmwPL1aHrVzBBbZs6zKsjHWmrfBABIWtXyTwTYey
	 alR3MGRP50LrIfQQv5NBRK3BlqeysH0/W9oeDOGxQabpgs60H5diWlQo0qmX2y6vvt
	 gFG7AE55Pzy3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E9FC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166703405434.20973.6314975360247133686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11fc02452aabf169550dc148d6b1dddc0c7444b6767bcbdf1f78756a2d2030c2
Date: Sat, 29 Oct 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667034054
