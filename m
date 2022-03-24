Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A161FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 10:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648116418;
	h=To:Subject:From:Message-Id:Date;
	bh=pdTpMOfCRD0BZBTs1BsxJOaIA1B+ksgkppoQizh1VTo=;
	b=Z3pLJJF7aVazEDB5jBwHwzG9b2x//awRL9+YwujC8CrRcp6Ti9b0nQoF3UIlbBOk
	6vmikkm4/LmyGCW/YXwOgh0H08jl8aaUb4wQwrDIvwjVlr3mUjGIRQNDB/f9i+UmpBv
	/vvtglbp23F9wxlav+wjBsRwpGqGtoaqWviHzpMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648116418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pdTpMOfCRD0BZBTs1BsxJOaIA1B+ksgkppoQizh1VTo=;
	b=Pq/4vlKQLoHz91/c3AI4HqW+zTWiMlGGcqlPSG/JSNpfVac3STUkoi11Z/BF07W8
	eahf8veJ8Yr+X9IFhm6SjHl3qXAOdC+2YTYDN5wMF3oYQB/6T8oaHyVzGn5T7tD1EuB
	0GXLMyOfclKBbjIdJl27Gbr8TN5rkI3D8ay82qlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb64c6cf-c75d8bab-231c-40a2-a718-495880cf9152-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2efe0c215ad279a435d95a47e63936e091a21e72196290406b61cfae5086d25
Date: Thu, 24 Mar 2022 10:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648116418
