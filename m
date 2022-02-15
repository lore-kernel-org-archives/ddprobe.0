Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8797F1388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644924984;
	h=To:Subject:From:Message-Id:Date;
	bh=W+ZTkgDqBSa2FVx8O9cP2a/GbLk6zcI35C+GZ8xp/Lg=;
	b=QaVzuRMNMfzxauz/hEbPs14GNDTNgW06/bywNq2EGjZO4t55osWVX4m0e4bn8+wt
	LfglKphUd0KUcGD8vgTyE2gabQ8XcwVihcGJu5kGwDxU+13db71terZjrcZBbvpwPHS
	c2Y8WpWzdf1sQ5ABe40Kyup2bxLJ/lgDr3PAWAPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644924984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W+ZTkgDqBSa2FVx8O9cP2a/GbLk6zcI35C+GZ8xp/Lg=;
	b=OSk1GVOZu64QSQYf3ZB5zfzqUFXxbtSeOGBFjPRiqxfHqoGV0oxt1ibifqwAyhqx
	CWaCIbSHDYDjshXpwfa3kEn8pRqvAz1qR/Qavcgezi5hYpUFGglJvmZNPCAihVwz7dq
	bvz4Cz/iwdCPXD7yCGtmxc0f7V6iGaWs/KMLU8fI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd2b5ddc-824f264d-b03c-457b-9456-da41e32cfb72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bc3fecccc622be6129e708ba0448f503064e9c9ee64efe240f85a1c782dbc68
Date: Tue, 15 Feb 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644924984
