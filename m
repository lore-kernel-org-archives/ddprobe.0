Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA73111F
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661338253;
	h=To:Subject:From:Message-Id:Date;
	bh=iQwXRi1/z1p92yP692kPM/SijUOliyr7/s9k00HsTlk=;
	b=kugBQNzMLSKoZN4F3fA5EiE6n2OcdhWaSnwmws5qIRHLEvjWIiqtVQb0DmutogYB
	kNnjjwRPJRlW6tyUoU3SI0fNSW4dYEqbQt4i24H9R57EYXn/ytzyZfDJR5UdYxYoo1l
	O17qra0snsE6YTGNyw9V0PhN+Z6+Mc5MpZfZgs7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661338253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iQwXRi1/z1p92yP692kPM/SijUOliyr7/s9k00HsTlk=;
	b=CQJpeshbbOm0E5Wa16MzVa9811Baet4Z7k5+zAJERK+aTmXuwdbTGGegzuqLXuo5
	1hSAkdgYZ7j6fYEZ8U9m/3IpSnhlj2GYbCH51FI6P88DJzYVpsgUC9UtLcJDuMaY7gt
	JER5XJAQVjHmESjaeS3cCO8bTsTHri9SsQVJY8ZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cf79f54c-bc9d8601-87bb-40c6-8e61-a6c1d7df45bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6e06fd194609edb27ecea84ef50581aca53b94134f9caad054014d5b7f229e7
Date: Wed, 24 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661338252
