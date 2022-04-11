Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087587B
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 16:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649693278;
	h=To:Subject:From:Message-Id:Date;
	bh=w/pw0VeXo13lesrWwwbTYsVXaL8NUDTFf2ttNNtNPug=;
	b=ECuwIXcYfeX8fwv297GU97zQWVQSsdH6le6OuxKXNOKZIfytOU3/Vpf8x7pZe5IJ
	PinRYyKYtcZTkl3denumg9yscyMiPeIJP1dTxzpdeKVA6FyNAt0xXDjun787+vYg+PE
	fHTSnujYgUUIZc5EWIu0QxjAklgUtUO5wWcyahXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649693278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w/pw0VeXo13lesrWwwbTYsVXaL8NUDTFf2ttNNtNPug=;
	b=DG6h8hVRV0KRG/zSX2HXLgy5AysTeLrFy46G+btSmzUJqbbo3wUapZ1irMElYbCB
	XAvRR5IbEwFXECO68cCjKfW9a7Dh8miQU6IddmpgXNRyZthT0o5AvytX+rolAypfj1Z
	gN7YMQFWbpJ1svg9sZLsyi2Q1qd6ZwfqBY9ZAQOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801961c053-4427f357-37bb-4917-ae52-a6154c2cadc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ef118810f8081ed05ad06f481773ce6e29c9d43966510fb314e299af77cf5ca
Date: Mon, 11 Apr 2022 16:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649693278
