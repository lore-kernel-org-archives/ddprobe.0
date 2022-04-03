Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3071FBD
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 05:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648962178;
	h=To:Subject:From:Message-Id:Date;
	bh=yG/8RuV2MNl74F/KgVjSqehaAvK+3+vzaoD6BAZWKNo=;
	b=fNw/ugQkgnrPErTVePdWd951QMwof9GwRqAL5+CLul1p2DJE0uyeCOKeNx7in+Ow
	omBKs4Q1SdVTVS2ODYhvJrW6DHPpE1y0Cuxx+GTN7FYGpPEo7IeXsySRtRVKPP7FVRF
	jIv83LK+H5DYu9br6S42ZlvMvXF6qtOfr1ZW6FUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648962178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yG/8RuV2MNl74F/KgVjSqehaAvK+3+vzaoD6BAZWKNo=;
	b=aG1iNWh/sFCo5BATSzSFKKLMjGiup81Ib1zCiq7LHfpHbwk/hbzu0ZpoD+md7Rjo
	RFc3WhCCRNnZ8lwkLzV6NNmGQ8SUCc8RMZMjnWDSvZpMjnMeSsvIld7lQ0PzSJk/4mF
	XaGTHVn4RwuheRvaQpdsg2aBQGHcfowQIJFCWBfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fedce0cbd-751544c1-2f66-42e6-8974-05dcbf783eb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a452c16f3ae0196c5f26db15e38cfc5731b016ebd321594cd9f41fea05f49ff
Date: Sun, 3 Apr 2022 05:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648962178
