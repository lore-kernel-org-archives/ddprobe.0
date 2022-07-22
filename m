Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F45215A2
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658472412;
	h=To:Subject:From:Message-Id:Date;
	bh=3UJDApDSRD74+wIlIovYs4wvO24102AkwNLxQXmCnDo=;
	b=iHth5tpicOzfiLy9gG22Y1rpU/DHGEme1pfc0Fl4DYiDkyeAH14LBj4r3WXK8WJ0
	1wP6QwMwPK2WGsGNRqYObWKwDDgVc7bmsH5qOIdHhSyIxU69r+WEVnxsbM/Ir0WT9Zm
	PgLmX5OaN6jsDR99HX+00pYePwXyIhVGr4J3mDdY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658472412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3UJDApDSRD74+wIlIovYs4wvO24102AkwNLxQXmCnDo=;
	b=gV5SlPj8laCn/EWDu90eaVEdqQtD+6oavvzimETnM70pyHbpup360F19qzpFJ9fq
	KM9zGBNqU9nbh9qMk538hNKKiFX6b/u+EomQR9uRRa3Mgo39mCa24r5cKW7NK8gdaH6
	XSaa2BMcQzuupe/72fEARNDs6veZRerrj8RhrUQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018224a8b47b-6051c9e0-ba0f-493f-a4b0-721c2c2219ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b4b9c416c0284ab81a906b0fc5fd91281c1b0751fa83fbb35b41482e980f2f3
Date: Fri, 22 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658472412
