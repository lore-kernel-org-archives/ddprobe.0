Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568D817C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 10:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653041939;
	h=To:Subject:From:Message-Id:Date;
	bh=JL9iUG3RDysoIuW3wOiRZmOnBj5vaiyT2z5Ib2i6N5o=;
	b=GYVGTA3E2TXTImvhmkdXPk8yVG0Ztbt9LR6QKb6h8M/L20mTSGZ6TV4Nui8zPgFR
	rYLcEvKIGXSyjCJmVIWcoebc17DusPJDZhz46j2dUKjWiNtIdCxY3kmMa/5zacNlBxe
	hpAnMzXom3yxLew7T2dgNhiqjmYEugs3IfodsLMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653041939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JL9iUG3RDysoIuW3wOiRZmOnBj5vaiyT2z5Ib2i6N5o=;
	b=Z6S82ArNowL3FFO5GMkqDW70QUNCRH1UPHm82trg1g+rkmSRTo8ojYUIQOCtl4lm
	JHhZHB2J7cDwpvxa7S045bolu6z5qFiG7OzfcjUNgn8Ci4I2dZPTGcsxhijCJ++1HRc
	C0uwQqEPvS66xJrtYDBGEgxOaa+3QMQDJAYVWLbs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0fa4394-f4584885-19b5-4410-b4be-18df012b2453-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7c7e8aa8a18d834aca47b277f55e4bc94002b95fa968817808a89ebde558f18
Date: Fri, 20 May 2022 10:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653041939
