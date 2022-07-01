Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5060910E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656661612;
	h=To:Subject:From:Message-Id:Date;
	bh=eev4MRoqPL1s5g5tFKMOLn97puVTPXcmbS1AEVZAQns=;
	b=I15aZ0qoxwaNlQDqfJ+hUqgLLCWTNnT4LUgkOfgFtrE0yLgpctnm9sW0jvW6QItj
	c7dlnrYrBeHeP7ZVdy3+xGG4HhGhKG09bocxmd/FTf/ZUsZkk23oaKeOFARSG0QP4VJ
	l8kSJQWIsgl96X+DzoAwQs+aRBuwW2qALeOrcKS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656661612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eev4MRoqPL1s5g5tFKMOLn97puVTPXcmbS1AEVZAQns=;
	b=VkPyZm+9pdjO4j+jqu76ovZm/nkuQS+ykc1E5/A3QBT2Pg9Ufxl/gRuO9Glh2jK4
	DZkCZW0U6TMDip+cOw9n6GGPJRigsyXu+PmGpVW6bbmqNB/qOvQkqAgDQm3RsTNrLN+
	180zW04kk4o91y0FbBaAaUkPQWkXwu5rcPysx6To=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b8ba16e4-93a7542c-0eb1-46c8-b4a5-24f3145cc0a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89b62c4b26b0fe8415d354542541fadc0835c1d1e8324e2b34423b2cd57c0ac0
Date: Fri, 1 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656661612
