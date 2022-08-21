Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4876D646
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661081452;
	h=To:Subject:From:Message-Id:Date;
	bh=aPj/sHQTNQaheoQGFUGvMGPoOC1ne2BVnZNVtK2/Lg0=;
	b=g1adtHaSZrWAQIOxJuuKaigduwVdmDSAd/93F7cY9A/TVHZ0xf6X+nagfAIwdn1s
	JAH/D9Tp5HRnu1rjfCfovBxN+TC4+oHz0QUkvRAadyZOMYkHMQAiU9Pj7mSwEuB0yV+
	57LQTE+NDOVh77KmwiYgd2MMwR6UTr21OYqS64wk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661081452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aPj/sHQTNQaheoQGFUGvMGPoOC1ne2BVnZNVtK2/Lg0=;
	b=Nto1ChA7tTL0aZtL+25aMiLxc5u9L3to15Gr/+yDXaZ82/xj6I4yDSocnknaW4dx
	Y/6EJWT2nljAcaefOfjjv+CnqXycWnRuG5sGBdR0oiT6j8rOhJzhGzJKUA/ULocAFKS
	ZxKyqEmZFZViZqnosGQ0b/eoL39jBp3vq5Pwjjnk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c02b8022-23dad9e9-3874-44ff-976c-5f74d8baa734-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb2d81d54d6a81e417dd7c232df763f0b433d73264788fe4e69916dbb7873abf
Date: Sun, 21 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661081452
