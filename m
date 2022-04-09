Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04226A31
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 18:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649527858;
	h=To:Subject:From:Message-Id:Date;
	bh=Qon6+RFYWNawVvzyVi/2eEN/6V3rvJPp1WAap/C1c1Y=;
	b=hvCoa5gq3Q9rHEVUmz72+wctlVQvPhfZdhCMcMjKqpYiQ/dL1kEqoZ+MVro8HB8s
	TQjAvmb0eT6QBWeo4xswhhyJH8hd/JHRwPEql1TbGxJyyCY5gP+pnRfLB+xdDPsURFl
	zBUz3xJ1mKeUVy3ZyayeAPa64a2Smlk44L1ORZqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649527858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qon6+RFYWNawVvzyVi/2eEN/6V3rvJPp1WAap/C1c1Y=;
	b=jMaSTZirPRKHcBk9HbUCW6WS8u8AU9brn0a0VvMg2X5MqQVZ/WcSc20Hks78j0ZC
	r5IQjkGmTEfu0lP3SJL9ZfLKWgBuIz+bmIM1Uhm8A+EDB5he5bKKPtrf8L6d9dQ2Q+R
	/6RaLXIxWnIbg2bmSXWUO9ugGqIznSX0e72M1rys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800f85a42d-7beaf64c-5711-4e09-84c9-8a344f80a27c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fee4ceb5f8cf54ca3f9f61d2cd58bae3ff524bfdc0e2686a1497d376a801800
Date: Sat, 9 Apr 2022 18:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649527858
