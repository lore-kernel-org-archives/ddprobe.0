Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2655F17CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656347812;
	h=To:Subject:From:Message-Id:Date;
	bh=i8vcazYSXljuDMQzoY6T28a14atEhWfXnJ7n+O5gZ7g=;
	b=SkEdDV/Jje/+lKZ9prdnxqjaSxuhFmIgFQf3MvwD2qSaN2vWozQ855+FYo/AbEG4
	dECsNMYci+4dmIWNEfMnaSZHEW5PMxGl0hXYa4C1B90gTPUSdqMSV8l8qBS/LJdDAzJ
	xMiV5wBR83fGcpUnocF3koYWTD6qpfmGAjHALlVw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656347812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i8vcazYSXljuDMQzoY6T28a14atEhWfXnJ7n+O5gZ7g=;
	b=ELWZdRQhboYeCMbdFdVevD2mBhQsYBsy1gG2siCLjyb5/zyx9zpN7OdEDi8OqFJR
	p6dnIGjp0iph3cbtLkZywhj8AezVdlXVljkYn/TktmvOk+Oed4T0ejqGqtnx0sjk0mN
	h3Jqk2Xr7lHZsHx6UXGRjqUBKdVMuyOJot1qq3DM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a605e190-7900c4d4-a25d-43dc-ad94-e2d63fa8975a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb781c9265e44a0b20b5550ac1d25b82f3a0708d1377d71ab16575b1544a2542
Date: Mon, 27 Jun 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656347812
