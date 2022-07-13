Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8618715A8
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657701412;
	h=To:Subject:From:Message-Id:Date;
	bh=l8rkHZ+rumV18gb4AgCuMEDFM5nq9FjZHO2THKl7L8o=;
	b=UOPMiUgDMBXa8H9apzl+Q8Izhf1+DGP29Mso2N6PTO15xJq+SD5bABdSQznX7q4/
	/TL+tUQMFHKY2z1dkD8ouoKs/v+ol2wMjS9o9dfc1/z0Txy6Ymg9YKVfChaRCrB6LZm
	L1DGCyLPqpQoF1/WZ15N4x+alHk2BMUI4Pqk6McY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657701412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l8rkHZ+rumV18gb4AgCuMEDFM5nq9FjZHO2THKl7L8o=;
	b=Ncjyn59LRUuz0v0y6N96JGzDVqi2O/u7MJcWBQqSjw5rZahDlaCoXO5jK4O2vsN3
	Y7Lu7gUZsCELDKv8R5l54adMybR9Z9CcPcW2eNO+6ac60lmDMQj3rG0OW4SLAwacta1
	2TvMix5SW2bR9As24UE/GFtrzvm1JP2znPzPseBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6b42da5-5e3ed065-70f9-4c4d-a4d8-c4611ada8031-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83cf4b507b8b19bedc3968dd0513f1ecb7244b696b123b9981ad1689242313e7
Date: Wed, 13 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657701412
