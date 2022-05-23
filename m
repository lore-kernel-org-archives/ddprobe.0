Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2701236E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 01:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653268919;
	h=To:Subject:From:Message-Id:Date;
	bh=gOnQv8uHg2dxj9qSUJdwOKmmGxIhGFwsw/8le3ZfXiI=;
	b=SigLExeZoGcg4rajq3a0RoH4p4B6rdmY0dmCTvY+Hv/a3ylwu6k0VWQx3NwtakG5
	/l0Cyyw9IMQQzYAfxctuKI70TMQE7jNfiKO7+LcNZUBIepQ5xY/HOExT+v0kacABCN5
	CSUP8v78uInhgs/YpKUUuxaSu23Em/vM8JXknoZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653268919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gOnQv8uHg2dxj9qSUJdwOKmmGxIhGFwsw/8le3ZfXiI=;
	b=QX3RsJ77gCzTe9KHcgvlG3KmgcuGjLZy2HmksQ9fzxrgv+NdyoUDRp/WE7es/J1P
	DhD+zj7zxQEA2+CSrOHO7o0pjAohJypsboOCAf8UZi6AjGVdtogiPWtn0Aj7o+OpIov
	V4yiAHrmv+322v9QoIqOTj8qTA88+aamxZY0xXo0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ee81b3b9-106465c2-78cc-440b-aa4e-98aa1681fb20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dff3c5b26bfceee287eafde43fdc1e68644f1e4230eaf9b19dd246c67de0d025
Date: Mon, 23 May 2022 01:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653268919
