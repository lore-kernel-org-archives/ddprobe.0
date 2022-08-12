Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD47366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660272652;
	h=To:Subject:From:Message-Id:Date;
	bh=VScwOxLaPnMFzdARHLlJqfdRPa1Qnf9zjB9wawn5/C8=;
	b=QRdPeCXC5VYcC7jff5VuBAhSbUrWQyU/BuJiqxFluzJSAct9EFfdR9r6JeGghTaX
	PMFYFQBCzrYwN0xnadBO4NyzwcIxNJvnyFqS4JnYWtWNiQ83ybmabcR+CgNmbFU+fC6
	bM1TTQ7eRXvIwmtV9/i93HHhFmzSI9jXH3Nglu7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660272652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VScwOxLaPnMFzdARHLlJqfdRPa1Qnf9zjB9wawn5/C8=;
	b=hpff3+C4VcXSH8Kwk6cRTO7C74XiZISz++Qz276IC3a9dA/zbWxS+Rm7NNmg68Es
	2oqzuA/Y18kHqpxVao/nmx8yGB0P8Pxqzr1D77Qr6mWFhyvQPEm0zQOZZ5zQX7nAQli
	meNpcKQybrmHN85aIqbrLqFFK7WqJdEnqyINq4sM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828ff63107-2f2ca27d-78fd-4605-bf5c-0b5a76c49345-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d62b9468c10b26cbd4257839b29ba8c1f59e449868657e1ee1c6bf6acfceb699
Date: Fri, 12 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660272652
