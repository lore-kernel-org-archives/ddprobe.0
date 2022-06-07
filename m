Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CCEA15A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 03:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654571219;
	h=To:Subject:From:Message-Id:Date;
	bh=A8ZykQ9V+IbGN6Qro90RyCHMQdI158hnxD8GjC8WJeI=;
	b=RS9BCTbmvvyHK43N2vNsdCYKbh+2Iaj2d4ZLVN9vJythBnnYg9PD+kXZpBdBWmwB
	8L4T5u1u7lUWhIY4ht9oZlEaLVDTsArg6CVlu7/zv2bBbmzdYeWMEkfmbD+mPxruPeX
	F7pbHBACMWNHfmLoYlKQ+yuRI39HYtDQZUZVHZv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654571219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A8ZykQ9V+IbGN6Qro90RyCHMQdI158hnxD8GjC8WJeI=;
	b=Nrui9yEcRWl3QDPCuln9T4BF1sejblRwjQcvDSCuW8krbPnyXO9w9SLF+8zj9Dhn
	2yFXc6VlXK//f6SdyeLQ3fcBIbLM5BUMUQPyorKvK7LDAv0pxBQEk2mbIsf92A20kCb
	Jlk+oKVTxShH/izf+xf7AR5hPAyzlRIe+Y9/ZvI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813c21395e-46a29c53-ba38-4860-ab31-47723fadd9e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb1a00f50cacb5f73a27c4e0099c29e99e7cb4bab30496490052c645ef1c3a22
Date: Tue, 7 Jun 2022 03:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654571219
