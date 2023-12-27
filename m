Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885032D033
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrd/gn8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91805C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703672896;
	bh=nRbwdS0eK0bQE3czOW1ZsZ/jvMQ2kDHmET+YZ8jkSU8=;
	h=To:Subject:From:Date:From;
	b=rrd/gn8KHbCU83K3c6xK1KOjIseHeIISIXO5T9ALpskI5ZRnRgebbECOyQWigR6GU
	 y8vWlC88e4iumThLXoiAX0ydWZSQ9s3E0BMrsVpcQhqcgvzvaVNyT/84v5MHDB59+8
	 7sJCgeEyJI/Kabu2Nk58+twB1FuWcJ8UflsZWSKrfYGj7Vy5kV1HzriFEjMqgoly8T
	 C8K40GNcH/IPEKl3VI3wGP10keAs9nDrOCBnTCh/CzuXLxKY5dp9xmt0hdrCsNF27Z
	 3Q1+hyHX279spZ150908w93jedjt4uO/pluiK4Ftni41Z9hW229xlHNNWliZE/7EG+
	 q01OZv78EQv+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7119EC46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170367289643.21603.9186121444307552999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5479074eae7b1cb68a6b62ad9d112b120f647b5c5f5631ffcbce6919554cbe72
Date: Wed, 27 Dec 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703672896
