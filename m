Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8D22F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647104485;
	h=To:Subject:From:Message-Id:Date;
	bh=2YJxZlsU3SsYeCvFFRduBVkDAjyXvOhIlHVzfRqtsdk=;
	b=OmdDyi6gA3oTF7mV9Pqyl7trobRg+8/r1lJnEe7QyyYw2KMCSk+C03+diweNrfOB
	DLIKVAB2sMjmfm47yEUf1a+JPZmewXkGowFkhFM3fo+Ff2ncVE45eKvs8eLdqJN4pl9
	kF9t2ok8EYNRWi31rGDAxCxRDnqZ1dm06N7yili0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647104485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2YJxZlsU3SsYeCvFFRduBVkDAjyXvOhIlHVzfRqtsdk=;
	b=bOcSQgvDu8MQNLOV3hCA+Gn6bjbC56xEKH0Z5HHtfCX0i/7fw1gictldi61gsePd
	Wr11tnhymMIb68cvFkt1p/qGEg+31OSXC1loSwXcv7Ri/xttgd/l4aughQGbFZ+6c2l
	iG6F2QH+fb0GcVeKa8cQZermdi2oZnbpPZ3Gri74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f13e56c-a460c162-044d-4997-8bba-81738bec28dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed6a5aaef21c0551d9aa032a330fa0f8392dc264acfd2df90ecc7404807576ce
Date: Sat, 12 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647104484
