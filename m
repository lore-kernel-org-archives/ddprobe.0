Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EC47E
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 00:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651882678;
	h=To:Subject:From:Message-Id:Date;
	bh=nUGiTSw9b1TDHbwaHoblnnNrmuhSVtOv2zAGiuWyZWM=;
	b=EW3FKGuqntFSq/dnYglSFcZZc0to5JNTvYdTi33nHsigejtfyvITAtyy6ZA/pKNL
	TN3YMJagYqM81NyszAtAeVMC6+/MZOIz2uEhYa9zeOH57ObiBR880iKVyZZcyNkJwAN
	KTP/j8vsEx4PrJSDlwe+Zwggzl6hZuEHBXQlHr7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651882678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nUGiTSw9b1TDHbwaHoblnnNrmuhSVtOv2zAGiuWyZWM=;
	b=DYz1CtPK+DHiJq5AwQ7vgK0IquMvp3OzBQPq1xFTyCVzsXma1UYGrYHVXsIUEXSv
	mCRSs/nApxvPXeUw0hjbNXZNll7Tyni2XKA7AwzH9RCJRFBUsZPvBITWeYQ2UE90/Zr
	Pqgd+AAvBfnGxbUFN5ycvrinZtrISOmFEZzTEypY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809be15810-7ae3f875-5326-4597-8a87-34381f64a0f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4286e8f59fbdc040223b58a7d8102e5a51304453002e70e7ca30f6b933d77bec
Date: Sat, 7 May 2022 00:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651882678
