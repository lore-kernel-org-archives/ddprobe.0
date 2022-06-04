Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9517E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 22:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654380179;
	h=To:Subject:From:Message-Id:Date;
	bh=QErCkNG65KoHUBJww4e1lekXlh0BOyYp+eCfme3PVhI=;
	b=MybqhfKckD/FH+N+CdGK8IiX64IOO7cVvMBY74n4V+MN3ovu3fETiMyBYwDOyA2F
	9tT5sXxMUpSAvCSkPaQJXEJQIRxRI0A91IZewGgBlnB7Ulc1hItv/j4vs8pIdnpOtXv
	MJrX9KRZdvLh24qEre7cBU+rMhivK+4wjrT7Ii3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654380179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QErCkNG65KoHUBJww4e1lekXlh0BOyYp+eCfme3PVhI=;
	b=X6grpOtiG5V7iza9kN3CSg/Lu050DJKoj+5v4jhae9MiglJ2uvLrS4FQVerbWgFY
	sO/N0KHJs5jCFvjWpMcsbqB7nZWiB/wekoj4mGkWmLfyBcXS/Al693KstohnU/vVKdt
	0bzxsmmdHw83yMp8/Jt8reTWTM5m/BUN6qJ6yLjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018130be2f2e-97ba46bc-662c-4961-bcf3-abd9dab137b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3311e9e7896b12df7604d7a7efc231a641813c284f84b3c61a3c63172e3282c4
Date: Sat, 4 Jun 2022 22:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654380179
