Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F57364
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659529852;
	h=To:Subject:From:Message-Id:Date;
	bh=qOL5wqSoDN13uDGq4balOr61Y+4JO4gnjWkZKNMTn/8=;
	b=G3uA9e50D8mGiZe8APqAXo9lH201lemlUdgsSKz4BBbq5JzWstvtVCrWL39uLjS5
	7Ft+JLcIR4cntv5liFuvVOek1mUiamPH/fL1bZubSqFJebteuTE+u538aPRgV4GsIDy
	bsReAUCQph6pDrRzit/Jl4LcbOdmwWojczQelnI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659529852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qOL5wqSoDN13uDGq4balOr61Y+4JO4gnjWkZKNMTn/8=;
	b=OZa65caeE9ZKsRQePxQHSyrU9a5CtM2oa/mR+X+zAYGP8eyGGJkjDOdjBG9IH1MT
	VLz3oeNTbRP1QsRJOwiP2+GoZ3eLgTjGdlUVa98oXQJta8qhrr3rBzdmczjoiYuBXWG
	g/0i9R6Qg5YK5iwu+GqkvXmTdPf/qSxWyP6BbWJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018263aff68a-d70abc58-6b6a-4ef3-b245-5e6a8cd2550e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a792edeb98c5d61b6b14b5d572c4f1538de212ac2a05afa09ee605dd0828b1d0
Date: Wed, 3 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659529852
