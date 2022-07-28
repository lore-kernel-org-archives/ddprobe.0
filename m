Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0B3137B
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659007852;
	h=To:Subject:From:Message-Id:Date;
	bh=o1u5X9/UGPKrFrwxMmuaePuR3VgKR1AC8nbgSC4Tn78=;
	b=CcybKAPLc87gMgqLNSPazUQTFf7eEr/qPWqtEbVUyBlFAgq+gjsiGk29X+AnGmw2
	VQqBw8K/3O9HSyWozZHedPFE6y0J6fEfAdn4U7LmUdGh9+IvQ5amgg1/wVA2Qoq9Ksk
	8qNV8GeTt+Zxg/8+Ra+lDnPPmGLc0hRWNM9JSJ1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659007852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o1u5X9/UGPKrFrwxMmuaePuR3VgKR1AC8nbgSC4Tn78=;
	b=k69NSkhWAw+0N6WnKMbSkS23U0Hq3nOHSL0O3B38t8u8bJaHTXuUVq1gH7bvMSaL
	zowyqtUmYNNA9YvDvLNs9lQ1y+EeeayrXVZMLM1/hG0sqML2i9JMwquI4w0kU5jimIx
	SoRFwG0ODU7xdK1OIDptNpCYz28+0YXHKS7L3SX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824492e02f-7a321ad9-ba2b-4e55-b7a9-2a7de2a7bd16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d1de49f17b243f03dd241d70f04161d2417e74dc42feb752b4fb8d107d38b15
Date: Thu, 28 Jul 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659007852
