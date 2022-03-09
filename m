Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEAD7E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646826984;
	h=To:Subject:From:Message-Id:Date;
	bh=F5Yh+Um9x8aPWRy8PHbb3mb6Y8YJu4uPkvg8s59KnYo=;
	b=X5oCJ27oYjtY/FrrTty8PJDGwyTYLcvozWkdP1JlWIGUSukLvKm/pOxN1NSZ61ZH
	dCYYI3kQ0y1JaDjsGwuRwlhzeqvwr+rxzfHM2TI4UU9SDtL9Q1PZYcQwqINY/IpOrkA
	dFu7vEbQrQ2EudKrJP8F/7qh9hvWXot5caZnmLpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646826984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F5Yh+Um9x8aPWRy8PHbb3mb6Y8YJu4uPkvg8s59KnYo=;
	b=iTzBeeonSJUZ7/GK/XYJPi5y/tWP70SpgvcrMOmEcYEPtozbqYfsTtwfv5f3d3pt
	AZEu+AACrlJ/RM/AcYtn8Qh+Blce3XyFrJfflJOaa6odAI68Ytu9nsI3NdlPAb8ePi7
	mbbWBZYVPDD+4OzmY0M6zwA7pROTmARTdYhKTcjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e89953f-012d2030-6278-4abc-ae49-8ed7828dadc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f169906667f1ce15c2c586a364d56008859e764065f7dc14c02a75de149ec2e6
Date: Wed, 9 Mar 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646826984
