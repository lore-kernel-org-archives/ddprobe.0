Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4477C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 06:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654757219;
	h=To:Subject:From:Message-Id:Date;
	bh=7nDvGjj3VkvaRzbdj9DEPeHgDXNDPuTLNmdUkutzGLY=;
	b=UFRgK3BPdYQ48y/PzNMkpQFS2MPb0syy9zLd+K+C62ZaqI5+hrdDCYHkL09ISVCH
	GYhiXH3upne83eQUG4wLkG124CaH8czASGEx/gomeeadJbb7cWwwY1ffYCkeIi1PPMC
	0uTmbipqjpds4lgdQ07C5ReBA1O3u8Akr74xJL24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654757219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7nDvGjj3VkvaRzbdj9DEPeHgDXNDPuTLNmdUkutzGLY=;
	b=B3L+MceSXfhgkv8zFjIxnUg6OPRf9z3zhmSeilvVu4mqScbfA9XblLnqh6VDSfuB
	/RI38eXucIiumE8uKLW1M6qli7nsMyMbzfrWZG+rt8XbBcOYKpezuwuzC++ldCGfaKr
	tF1d6ecxVqXEabZoPbVY5kUpS1eJEHuSC9aQuv48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147375bb2-8573e945-edc9-4d56-ad01-04c70588b9e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 825a021966e3f1497a4a39374c40ef8768a02d5ecc6e67a65f4d7db254e4b858
Date: Thu, 9 Jun 2022 06:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654757219
