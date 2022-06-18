Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159B17B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 17:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655572499;
	h=To:Subject:From:Message-Id:Date;
	bh=GNGzZ9x05/37TR6bqUknZn3BaZVDz+wvzkFViEIH+K8=;
	b=PgnLs2Jnvn+lZFQvf7P5qREjf4KViQV6gP0OiBou2vc7VAo7okSR2tp6sQ62qtDy
	VbKcmYulXSBmIiCxO+/6WSlmAEZNoaLyn4ytbUgjLFWLTmyWOR0xInI5v6iX2I2U9MA
	P/opcaU15qlNnKQh6a64b2coTCZ2+/g2GHLlsDEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655572499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GNGzZ9x05/37TR6bqUknZn3BaZVDz+wvzkFViEIH+K8=;
	b=cFNlm8n4ZTkeVpQ6J3CKE+m5/JkX3JtZq/IhkyhUFQz2xt1FC4EPK7mJvmj3nItD
	Jqqt7wK3po9EED/VanKqEI50HCLTRDcqDqkCEeLALCPbHYamk8jh9tPfl9DAXku0Pz2
	BYQZTzo4UzQycqhg++Q7K3N+WIne+mSMw8s6DgYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177cf8b3d-be134b60-0f92-453c-9636-e35c076e042d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1e5565d7f496ca32fd2e523b053e8d7854e3972bcc6bac2092aeef6113e6c7d
Date: Sat, 18 Jun 2022 17:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655572499
