Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B20D33D3
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660941052;
	h=To:Subject:From:Message-Id:Date;
	bh=y7d6uDg5EIYcx7NvJL0vkytMXkIpTwOvx1TZoLtp2Vk=;
	b=Zz+qBnWkMKLP9l0VBOW4CPRjQ4QWiyTtXUJvh+8xxb9v5EqwViRTfcDdqZbGjpbk
	fQC0G92bkbB1LP52sPY3oWEXHyLdBaldwYQBPf8AN0ymsPXJRtoR0xluO9z+6uGiqos
	oAPQJWEec15RxJxW5PX94q5eZl/RA+/lhNSuHbRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660941052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y7d6uDg5EIYcx7NvJL0vkytMXkIpTwOvx1TZoLtp2Vk=;
	b=IXlIb532lUrav80VhVupzoCyUVVV+Y1coOG+zemkCj2vgVwqdoI8K8x7rxrjp7XR
	jamXTP3VH+bOKAKplcaGesoSDn/PvWg1GWKpKSgnAyTqH3OO3OG7nY1t0ece3tq05/B
	adtaeIjfFSUP4d+Pm2s67a2oE9usalbj3jJRAp/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b7cd2ab3-2aa06853-9c30-448d-9d4d-dc26a37a152e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec1231d897da9ea8a42b8fd822f6090cbf40091b2752172c2512925fd88c5e4c
Date: Fri, 19 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660941052
