Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025ED2F5A
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657018612;
	h=To:Subject:From:Message-Id:Date;
	bh=0PJf94KhuhuH1ilcdQf+yvn+voMMxxRaEsajMdzJBE8=;
	b=P//iy2ON933nKdCb39/JR44kJyswP+QSxgA9gTHcJAiVOw6tDLYKiRbn4cbLe7Bq
	xg486pOfAJX2+0z6gh9jHxuud+EH3yCBpK+Hu6djDawGzwYLAc9OJtySrJWcEcj8npY
	48OEcW3s0CUm37N9oWjwvw7Rkx+USXHSS/WJR6d4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657018612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0PJf94KhuhuH1ilcdQf+yvn+voMMxxRaEsajMdzJBE8=;
	b=NYe4AXYde/GFvjm5Ke6mf+MsWzs4rsXNqRh0YeIMWXwW8zuA+k7t45BcwC2z3ls+
	hZ4F7tQyFt/qFiSOHA6wYk5BaW9xTXlcf4rhzf1uWAJj6mPdjO+IgpCxA57o4mS0YZ3
	dK3gnw/s68vlkGIvh0dCH32zj44OB/oWAwqLqxUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce017a0a-bc02cb03-2310-46ca-8a6b-802cc4a0bfa6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a741c9e8e2c9ad91c79d18b2865758068a56531e866513d930a67883502e5ae5
Date: Tue, 5 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657018612
