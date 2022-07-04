Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049897E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656956212;
	h=To:Subject:From:Message-Id:Date;
	bh=mBXOd3QX3Wq48rPzRehY9+MSFzxte+wE38KzIqVm3Qs=;
	b=OG1gCqXOeP/1R2EZyIeHre+s/tFl4CxY0Y3tZ4mDrs7PTEicPRDdJKzTpbsZGN1x
	/JDUUb7rZ2OVL2PjslEqdxkqyKTRO+IMsFb2a9xVvdu91o27YNm4wkvoRogkc8FKGHc
	T8O6Kj3h7ms01mX5NI467arWPRuSMvC+xrTGDHC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656956212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mBXOd3QX3Wq48rPzRehY9+MSFzxte+wE38KzIqVm3Qs=;
	b=A3BVhA9sbUNQnxchW5iuSpPhGv+cqCi3UPNJBtM4z5JguEJ0aVAV+fY/lIICjQeI
	bdYBN+UnMtKd+3t18krXLTqHkkpZsDZMcQ4U6lbrd2MePEZ98bSDadDx9TRDXTdsPYF
	dOZYYx0HWVak9Qmx5Tn/MfdA9B+UFZ/LzX/YH35M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca495441-928e574d-9017-41fe-a6e4-9fb0fe9b5aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2e96804c633c717d08ca5f492a5eab1bb9fa0a86c47b6d9a4400d2e0d90df71
Date: Mon, 4 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656956212
