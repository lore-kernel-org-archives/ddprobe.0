Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F381366
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 08:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648630318;
	h=To:Subject:From:Message-Id:Date;
	bh=LSH/iD4zv+qVY4DTMDoBe7xd9NCX/5KWlJBoi2uvFOg=;
	b=gpq54C6MSitl8+V676hLsJ8Glr2BuncXR3bB5P+yjIigL2Ib5XQrDvL1WeH1wPmm
	LA3a5szVqhTMmxN0EVvPFhKQftmhXXjiMXxRrYIIZUAL04X7ZzhSwDSHDMNgRE2SMom
	m1vbRqvzLN0FDjA9CDZrD7gSCz2P/XgZrSVymg20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648630318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LSH/iD4zv+qVY4DTMDoBe7xd9NCX/5KWlJBoi2uvFOg=;
	b=W6oObHZFqMi4Mcw1I9tyXEyPwOcYChf9Serk33dAfDqVl8glMPPqzZo5tPNkaq1X
	PByOTMQ8m0fryUWRJF9Wb8MlabrLT+tAB4qENnRMgxg4RDZj+4x6ooyy96cx3mUP0zw
	MaWInS7O/WCKqtrIqRjGTPmg3wU5lmq/5xIdt/tQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fda0644ea-c61ba0c2-2d5d-47a7-a083-8c3ac00e6feb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 315f03930aa79e18f2ea947033e8ce41ce2b7154326e08f8229bfd3aa61de400
Date: Wed, 30 Mar 2022 08:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648630318
