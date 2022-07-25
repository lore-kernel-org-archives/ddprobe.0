Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5202D37E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658738212;
	h=To:Subject:From:Message-Id:Date;
	bh=CW+vfvUaq8hCLh+6l1hRbqfXiWtP1XyfWkOoeQA79Ds=;
	b=VnhTonmKLV7hSXCLhMwjOv4J3W8NmYz7pjOsHqa0QZzmCTfO2Rr2CmqLXDUAgCJT
	G9QXCw8zw1aWvMhL4pd51vX/LRUUYqoh/+rz0XVG5fCCeMsIklkt2lb0WTKZkediV+0
	XRJ0rQhzxmQsreX55J48Jjo5jvdeOi5Ojj8MyjG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658738212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CW+vfvUaq8hCLh+6l1hRbqfXiWtP1XyfWkOoeQA79Ds=;
	b=L1Hyk9AtUJLOOTOoFhCvgT5c7X8AeuKTn5xU/DiWi//ZGTSK1JVckbMLkXbyL0ZD
	/MOobKl3WiPfziuc+tw/UsG1sbDozdPE83F/lfDDCRETcSiB9QsQQ1hAGQZuTt3g1xK
	I1JiDTAUlzIYwBemK0L7JJd2u48B09HIlK8M9uTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018234807e42-6a13f1de-ee6d-44b2-ab30-76bc7f45471b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18dbc0621f5b6881176563cad954b04a0e810781e42acf0f3f744165e80921b4
Date: Mon, 25 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658738212
