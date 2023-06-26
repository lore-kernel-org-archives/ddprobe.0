Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3BF7F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 02:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C5FC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687746788;
	bh=YxtLcnd2leX3OJDPdQRyW57f1VLu96R60MnOjhaBsLo=;
	h=To:Subject:From:Date:From;
	b=V9IUoJQ71pk/FrS7rPjzoP0bjlOVM6hww3Lwjh3goYfgSl2luEcCr7C+1X5aKc3bY
	 s44NFjnfTcJYcNnUakt3Wgp7DqFFq7iUK0Z6Abu5iaVzzL8irxLnu39vC5FtaGR2t7
	 5iCWbylsreBEUGqzaFGQH6dlzXxd1t/irP4xpGDi8tv3YNcsiNoNmx0qvZR9K6jNjD
	 sW6teqEVf6ygyE8r0iZY52oDX+767m+vjvFN5d35vBi1CF07mKZdhEjO5mTPYZNW9x
	 rqp7VyK3up9rll0HVPXw3J6gYigWah2a2h6FmJqbjFZn8BwZtIAJ4+L70R8zdDUcB8
	 90HXu7wECX64g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6072EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168774678873.26384.9513438728493857749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d691f449502c12cc2cdb2f77a217271b9e2766bf84a2eb55b376e9686663c1d
Date: Mon, 26 Jun 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687746788
