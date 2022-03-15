Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D6623CC
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647363984;
	h=To:Subject:From:Message-Id:Date;
	bh=vVw6TQtv2s5mgZsxRa4aC/QLK+SbXmxklDXJX1Bb0vM=;
	b=aGjZsAW/VvFFj8ULbkCeT0F/xFGKHbsEsPlz3D6TfU9IRdnoBSDhSqU1owlJDY+r
	ftsGm0TSZYgva+5EFSypSLeRhVFHFOY5H+GDYfvH8XYvurZ0zmim3I2zchXJFov1bYr
	IxEFOJi9CbeWkZkQeYCVTNnHDsUlVG4GVpZKzmqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647363984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vVw6TQtv2s5mgZsxRa4aC/QLK+SbXmxklDXJX1Bb0vM=;
	b=drD8o/VhQQ7OthU272Mz1C1d9/udWIDYtl4964gZZEg2aWRaigdhwJ3Tf8o+8vxY
	1uJ3jQWaKwgIylczLH4Rhc2Fr7oNer6JTbhJ+ETgV37MkV8qoWUbfsbYMYzApWCQwJN
	q0z4Pnl4IEngaeQYDWUMesLqCS4Lm9ULkMgqlQTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e8b8d7f-d0ff8ac8-8d26-4a92-9d44-cf3c80cb2cac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcaf3567aae17198c0a85baacdc0a1cba15b0785323fff9c30a34ef86339ec4b
Date: Tue, 15 Mar 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647363984
