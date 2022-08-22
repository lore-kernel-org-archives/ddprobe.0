Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F96F7F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661151652;
	h=To:Subject:From:Message-Id:Date;
	bh=QMwpPoH3bRRka5v9FJQ3MuPS3I1BNt43BqTGn2/wqxo=;
	b=U6Sh5l7XFsIQN6x/rez0DpDuD9+nb4NOXpB1c5RaDgoQGqKl+258RcEncd8L2X7q
	zZJe487Yt/dRUCTTIolRJ1tTiCloQXJ1jFA6zbFVQEFyYUb1ml7LDn47f0Ie5s2hn2P
	5fKC6SVaAl5S0W2uPFABVnrt+kgxJpm67sKTQotA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661151652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QMwpPoH3bRRka5v9FJQ3MuPS3I1BNt43BqTGn2/wqxo=;
	b=O0gLxVOaFGUeDYCucdyvsMPAXPAkPsJFFqrGR3CojRuyvmKem2lSLZ6iaADfxKDQ
	8VZ8YTU+ee8XqfSChIfIe4Gk7eNS/U8vY9hShv2KMcWkZIapKcVddb4J6HdREstKgdL
	PgrDEIW0GVGMq9xmx+gqxRyPmuYii9jCeMfcbM/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c45aaacb-12b49419-7548-4242-b3d0-60b08e5b95f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75fb983c2d9d6b57715a15c9b408d4501fb9181ea3fe3bd81681d4eed3e24509
Date: Mon, 22 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661151652
