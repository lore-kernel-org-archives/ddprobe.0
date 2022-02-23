Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61E3C8A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645632985;
	h=To:Subject:From:Message-Id:Date;
	bh=mwvIE4cjqv9zSBMSKqTf7EoqVHzJ/Gv2rIh0hUX6oxI=;
	b=PQOPcevQVqTwur5Dqvl/cv3oN7/P7s5XpPW0gOom0R5pF28XPm3eZUrf3Y0xjmlI
	0IuJ3IlAKGS0GckipzWW/5+I8tvkTFFEBgc4mvVajhyuQCqTx4ZycgUgMuuljPQy/Sn
	tN1oktkikb7YPCTH7BlIilDYOaexVOBGzGN8WZF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645632985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mwvIE4cjqv9zSBMSKqTf7EoqVHzJ/Gv2rIh0hUX6oxI=;
	b=KgK+7fUjbnbimF9nyy/ix6WT53tN390qLTc07V4fmydTkCUrfvR98vh2t39Lbeqb
	pIaKUbRrmGJrayEwnoRUInmNwVENijShRmw5avdZXzdfjQorh4onj5etAFzfeHVpGks
	MOx/FM63GRgzvbJMWVP6c3MhlHPvaXUcnpW5gSV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f275e97ce-0d6023f6-5ccc-4d3b-980e-4aee4ea23498-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45f63766e146dd128b54169f4a961f6c83530f74c833e5ade23726bdf04ffe10
Date: Wed, 23 Feb 2022 16:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645632984
