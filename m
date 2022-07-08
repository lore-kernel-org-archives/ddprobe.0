Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4F52563
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657290412;
	h=To:Subject:From:Message-Id:Date;
	bh=d8vvtnMTGlFzD59072O5VbAFhWeWfU06JS2M2PmnrtE=;
	b=lFSPPZ4i8HoGFQaTEKQM8+GrUvkb1wJhegG+EAEvHvRp7KqGxppl09MK8mD36cHr
	h+r36B7z4MP15ckwgpVZqthduzE8QxoYaF+EO6fGLAHZmXdXyTTxLKovQ5UkcT0OfZw
	xczO6d9VeJ3IHW6FnNrM2vc/fhSoRDuo2TPAVjXY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657290412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d8vvtnMTGlFzD59072O5VbAFhWeWfU06JS2M2PmnrtE=;
	b=X+cl5fLR/APEDjFxnWyMNX7IHAAovE8SmGpFvMcnWxsbB0yQ+YZRZSZkXUeDdhGQ
	I7qRtqGlK/4bhZvivcEwoyg+zPqEN2K01qKJRrqM5laQ1uEGxKu1HFjNIyE2BEv+l3G
	8723r1sqRAIIz3V3pUY7sgle0KB1sgWk++F97BWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de34d10a-3fb09efa-3e26-487b-9e98-6839aed88670-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7f8221b3cffe0bc077f55872c5ba57155967438bcf8992cde8247b610db2c6e
Date: Fri, 8 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657290412
