Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FDC3D7F
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658688412;
	h=To:Subject:From:Message-Id:Date;
	bh=ohq10tZlLbYRaUyUeRBIKwhgCkK8hdLK+pWgpFTEUaA=;
	b=R0YEF3BTBsgKlKLOyiCiFar7XcXf9aK8QriptspxDNBG+q3zn4OWM5atIsmCmUjq
	wR2yHe85HF7bQi/J129qnrbjEAhIwLnqnriqcs+eD1g0cq2bGpwDD6uJ9lR+PQen/gA
	t8YkXQ5YMrAa1A2ezUPkL1TxifscOIf+6oRzNV4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658688412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ohq10tZlLbYRaUyUeRBIKwhgCkK8hdLK+pWgpFTEUaA=;
	b=ZjROAweRmW4059tNilt6XzLP3jSLYatnNTkesOXoFnN9FKNzb9L4J7GQUmuqQ9kn
	Td+FqvjCEUdNxtDL3KxBHcdC+3ygqkFJVKCtNT+u15i35ezrnZxD1eIOhdKdwgrpOiE
	QIQ33DS77sS61kvHz9x2DkfYltsTvdBPn3w0uJ0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018231889a88-a1db9f1d-5ebf-49eb-8216-0b513417211c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1bad1e130db7c4d4ac665c550730827a47bfc903e9658efe11c73ab2e2f7134
Date: Sun, 24 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658688412
