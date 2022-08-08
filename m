Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56289187F
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659955852;
	h=To:Subject:From:Message-Id:Date;
	bh=e9l40uVYnage5/527wRurrQoPoL3GckbSyRzQQNVGXw=;
	b=Rd3Cv3yZ8ZMqK9tus6pmmsDT1KJwzS+ACQbPPSUh9XDwnWZGinb2jHcen0WnuywM
	CHBUSNN+RtJz74uaykHNAG1ElsD9LmmD3aRY7V4RyWgp1QepqBGXSlBtOmLvIwkyHaG
	RTz9+JBqvcGXzwK5ZfZ3eG9osWoczx56hVddKn4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659955852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e9l40uVYnage5/527wRurrQoPoL3GckbSyRzQQNVGXw=;
	b=fRN5VLdYatx5VQSUyl3i3WL4OuPZWSvOLtK75SEm6ySqeu6Nyh3myWsyU471dzy2
	G2/Ffq34lZ8jIlFGl6enK9PG85sKETRllIg9tfbQwsRHWNunHKDg5RZ/jjVx4kAIz4j
	GAnLYvufrneR2BvwjSAviSu4fpI8UDPaRit+SFzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d143512-3853cb40-410e-408b-be16-1a8adc195b6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1b669df69181b5f70b59f5c5aeaeeefc4654fee9aa24b4ce8df952700efb65d
Date: Mon, 8 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659955852
