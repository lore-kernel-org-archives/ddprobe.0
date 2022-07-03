Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA3323A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656850612;
	h=To:Subject:From:Message-Id:Date;
	bh=dU1e40KAI4uX1TPOAJMlX6QgoXBtA8ksHxQ167hCnbc=;
	b=Bh/JFNjxHOVprZSF7Y8lxcbJFcNnNNJORYJBDkncYOPO758V1Gbf5xVZ5EPfrDDS
	VSKHKuGS//4drs0GWd/D+7YETYGI7bo1NX5PgHLNe5wuMdV1ATN6FueAc8SBa7D5LqM
	IEZqQ7w7PtstPS+hUQtQzb+8XEvhT/rdTNEiR4Ng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656850612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dU1e40KAI4uX1TPOAJMlX6QgoXBtA8ksHxQ167hCnbc=;
	b=enr0YnbhRkfHRgREy0dFmKMk329xaMJcTGKnpIMAB9w8ERn0aaYN4tD+7X8RxaBJ
	JA5FAPoRyxjMXG9QbXzdISjw8mQBNPDfAXiLl4CPJvcBSVAnzDvj+knWCTFQaO97NVy
	lFLy2NdeYlFwWTyGzRhefpediIMslc81xwc/OJ3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3fe0052-bce33352-0aed-4993-8344-e259a5c58c16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a64d7b225b4aa0db11586a148c518ff4b3605e202c6a84bd24f2ce9ee5e7b2c0
Date: Sun, 3 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656850612
