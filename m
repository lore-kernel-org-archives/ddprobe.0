Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B75EA6
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658137012;
	h=To:Subject:From:Message-Id:Date;
	bh=oC2I/G78Qy73KOAZyGHBbNDTNMuyj0KIkIT0ecBGjHc=;
	b=WnlFd2aIorcM7y6LXAzJLuBF/fDt2XU0b6BxoYbexwMwNd6Ulkub3922AUp6mULO
	WGoG/+rp8YdCtF12sVJ4MwC9oVOnziL5ardwTnT7hxX4Q75YF7/Pq2mQR1hT4f76LBA
	wsxyk9Fn2bkO5qp04K5hs1ISh6GNcf2webJ2rGsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658137012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oC2I/G78Qy73KOAZyGHBbNDTNMuyj0KIkIT0ecBGjHc=;
	b=O+GX/kU/aJbSQhyiO1U4zgYboorjsJYjHYjHiI8BzylXxMNDJFl8Bmd68JDRsxlZ
	31V0Boo99znQvgf56zL9JUUvBlqPPErqfnI3Zz8bkJHFbSJ1m+2OAT+dNx6T6kFnLUO
	P784ezYU7lxCw23tEcf9meeaVUc4Aw+NJ/xri0ss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018210aae861-96426d95-03a8-4e4e-a433-8fcf3ba6c7a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7de3f5a3e916c3dbb18462e8537b3f85e95221630d2bb89a2bd50ae2f31ddd55
Date: Mon, 18 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658137012
