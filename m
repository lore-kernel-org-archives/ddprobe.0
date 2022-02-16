Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF2B38D1
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645055784;
	h=To:Subject:From:Message-Id:Date;
	bh=0WSOITDWQxXb4RW3EKtKtlt6WKePXx57Be4t1JMyr3w=;
	b=dnMsFo8SvMGGjTsUCwBhx1BpOD407qwx2V+cohA64+o6TaZCbk6dLBRKoenIcNI/
	n7Ac8PTEhRID2zMYft0+2ZzvXD1qH5wlZWKRDhx5FLtoTeeeol895nFfZL5eBIgMfMJ
	Yws2yyuHfqYwVfCbMnSbGuw1oNarkmI7qPbwJ38Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645055784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0WSOITDWQxXb4RW3EKtKtlt6WKePXx57Be4t1JMyr3w=;
	b=ChCKZMUgDFOhpbVzgLTfQP9ff5qTP152lB8Pra0p4Tw+JfDL/NyigYQeJeaC8EMF
	ZBuNi+5Z8z3dDJll7eU0UBpaVQn0ZbNG1EATYEfSopFi74qiGWwR2GsUGgILc8auD9z
	QyD4SHUS3d4YBlAsGtVVSF5E447zK4bwcsKpp6Uc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04f7373a-59d8ac61-6628-44e3-bb17-6bcdeb98ac4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d22826f23d13fd545621154e3202bce9d0ae2509ad86fc35e141417ba80ebd2
Date: Wed, 16 Feb 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645055784
