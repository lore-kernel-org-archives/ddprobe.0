Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547F77C
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659636052;
	h=To:Subject:From:Message-Id:Date;
	bh=dC6KmUTor4h9ur0Lj39zrf0XVzTMPkaseCYSPh0YaPA=;
	b=BB94SExuA1/TY7TYvSqTIdbLEz9De1xyFdjX300zK47bYAOKqRpOKyR8pmuudXQC
	8VVOsQNC+JmJda396gg9MvBzT3LBa2ZEfyDxjMoXgdZmU8GuUFQZZDxT1AI0fT6ZHiw
	H3AwQO1PsdqAp5BvAZXO8ytAqm5rYSf87Y9Q/IMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659636052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dC6KmUTor4h9ur0Lj39zrf0XVzTMPkaseCYSPh0YaPA=;
	b=HdnB71a0esFdqhU4dpmNUGQ8uYlMx1BBE+F1595Hle+vsCEPIYIEKNzpnhgvZCNg
	eIA58hSl1ilykIwYKtoAxawkt5YBzlUYesv5ygStyO/H0Ks1boBcv2FFRMRh8D8Mv+T
	Uq6dH76taxjygm3VlGBnJdqILSMSFrF0IXb5oPJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a047250-010f06d3-df3a-4898-b525-a75c230833c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78672bf5763ed1d2bb54cf2693c6a1adefc958ed435dc656c8f04f8598d69f9f
Date: Thu, 4 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659636052
