Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CA13237
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 20:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654203599;
	h=To:Subject:From:Message-Id:Date;
	bh=BfN7ZcOOpSBg/2p3cQbJ2Wb5KqQJMvtJnL5E/f9xr6M=;
	b=Pcct0IxOp5EHoZIMHEprGIbz519TRb/6tJ8X4gTpDwipJojvWKmbqM78nywc//HI
	ck24N9IGc1+cWRLroDAekDK490O2k1GdEg5LQ/aK/jzKp8Q1MGk6g/m0SnYHYOuBxGP
	GY64r5mu30iAX7fSj6R2VwcLvFWyLsuMM53CNX9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654203599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BfN7ZcOOpSBg/2p3cQbJ2Wb5KqQJMvtJnL5E/f9xr6M=;
	b=PPc5akrjMST+LH/Cq9WDWMLFmq/fTGY5qCjqQedE3oBJabhQ0ba442ArXq5jckVu
	6v/7KLyjlXF5MKCQx9np3UDqz3R2TISpxKkF+WEHNj4HlaAlIl7MfTDW79XgrlIRLjO
	N/LKUmHwTsxpZ27ot4TTR2rYORahT4WTv6e0YR14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812637c9a2-086c775d-5eeb-41d3-a440-bd9d9c2573b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ea538bd6b68188ae946c52ae6fb9575230cfc13b1f824ad56c8b367ccb3f49f
Date: Thu, 2 Jun 2022 20:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654203599
