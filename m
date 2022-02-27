Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4123222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645998085;
	h=To:Subject:From:Message-Id:Date;
	bh=895PW6zaJpxvGubAigvBij8FVpC29Zb4i9YLqqmfolM=;
	b=BVy5aE32OfveS5jRsRLLSNIM4M+ejq5q6imYpilrzCaBWcIRWh0SsjrCeJ7zU4nk
	Mm6t202CI1rOrPtUejp98KjfNdZaVQQDyVPQzbVW61f9hPz1UY21yyTrdxS+SEzspl/
	UKTgB4g+BeZxfOULo1TMgcF47dlkn5MUt2mQMalw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645998085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=895PW6zaJpxvGubAigvBij8FVpC29Zb4i9YLqqmfolM=;
	b=UTy3le0lbCUHmnJwh1KhtPzBONbqh/+NGQsBu5SNBqsVwi8fGZBURpXmZUnl277W
	l6Y8Y2iqOU7sNRC6+ZnEZhUHzh6Uwz7oBkDXcEDuIbDWj/aqdclTD5Gx6J/f8aR6zxd
	kcrSjEYIc78P2cyPk6xKoXaXF6/aJhKJUe9m5wro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d2192cf-30c1637a-f75a-44e9-a1c7-d17a4b861d31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afaed739003c66fac23362e31807c551db26bb3b6d6a23d56bd9fe5bed2bcbf0
Date: Sun, 27 Feb 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645998084
