Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F4D7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 19:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654543319;
	h=To:Subject:From:Message-Id:Date;
	bh=WXxaQ+JVMk131O51ajTfhPTydn+RLwuJOOl13D5cifo=;
	b=BFwDScQjuDDct+xJv71dqBWUTMKpuNTi3nntJkSWFsAmeNSxD69cF3kr0yl5AlXh
	phwOgWyEdCtwJfcvgqgw+y9anPj580SvI6IF+ydhEKaF20oiX1lsoM2mQq2D5enu71h
	vaCgIu2+n5btarcHSPvvn/VI848aoEunl2M0Pqe0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654543319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WXxaQ+JVMk131O51ajTfhPTydn+RLwuJOOl13D5cifo=;
	b=BK5lO+CxeEmwN/XZb+UZChlXg1I+P7qGPvppwjCBQViljsbIUc0+8XucpZMDOwF7
	tPyRdORiy1Ij1cr8lKKz7awReVdCERyf/vy7BZ+viBfX4Q4RXKmWzjAV2ZU0Bfx0qwU
	lFGC7fyZrNRR6IqMXKj8HxD1mToxpICtUpPh59Lk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813a77810b-e46c5acb-6e9a-4da4-b61d-017bdd385cd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14f286bd8f29f9f7c6e6b9790bf31890e75870b23ac8467a927b018a48361fbe
Date: Mon, 6 Jun 2022 19:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654543319
