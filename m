Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3F77C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 19:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653508079;
	h=To:Subject:From:Message-Id:Date;
	bh=QZ8EJgDrf/CvCi9OV8aM+AYTt73GdFiMjwfjCiTwQdM=;
	b=ATox5CJ5pASaFjb3kZXGawGQaZKavb3yxDylvYXR3a6MwVelDlaFkcS4p07x/m6f
	uurC44SI3Oz4qFGF9TmOU1bLZDSg3ay1HyM3tExmS7NDMUhM9KzeAOo8+SlP/L+Yd9u
	uGPEoWxBAlSJa714HvlU8y8pC7q1CtPs6ilXCPJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653508079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QZ8EJgDrf/CvCi9OV8aM+AYTt73GdFiMjwfjCiTwQdM=;
	b=fxk0yp2kGmewHo+/fs+uHwoOLvA2KmNBbfohDHuAQPQ0ksQVq03QTFfxMMt/lSVH
	82kqegjD79eeqNM/HFFjJcgoBrdUaU0G8IVNiDAgSCFQVJ0chpxLAkf7vfSDkYUn4Q3
	y/PKyTj4wXJzKjghZzlwaak3JjwHozKcRIQwImYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fcc2fe70-2e36ed8b-f747-4c07-989e-3abccbb787a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7401085e985868e3b80b959039f32f85e05059b9ef5b4744b5c48321f8c24438
Date: Wed, 25 May 2022 19:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653508079
