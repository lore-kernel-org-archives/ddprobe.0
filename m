Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7992F4B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 21:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650232258;
	h=To:Subject:From:Message-Id:Date;
	bh=KcW4X0jSqAde3EkX0T6iDrBHP70Hhmf2Zc4iW/Gxx1s=;
	b=PPp40aZ5pNGfjKJ/6EflbEburOda9bKC3DQVjgTiGKGExaQdk1PF1pvuSiAlclZj
	rZGwJq11vfq//HL9CQpDeYLCGiGbyFlQm/CXvGHvKC+PBbv4cASZiQKZpuOVSh1etzs
	XJm1zVRyoqmXlb92RW2xUv9K/8A863l0HCX9Qdn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650232258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KcW4X0jSqAde3EkX0T6iDrBHP70Hhmf2Zc4iW/Gxx1s=;
	b=c2m1V3WxX/qp1Ls4xmYS/XPfvevHpg8Vkynm9bxKBmZnB7lp6g6wVc8IUtXzi8aO
	5nrSrF1mbM25MiwMAg4OsB2e+EWlLZDiaJFWpRfud0S+Dnm0G3fSdYV+3P1zXXTzOfQ
	2bxJe07Njkv93DBpQL8R1kHp+vnprAACth1SL1QA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803981eecc-83067697-d39b-4f14-8e1b-7032887c4d68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6695c7483b0bfd9dc88e620904060ba7b2e1cb6c24d3fd3450a41821420fdd7
Date: Sun, 17 Apr 2022 21:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650232258
