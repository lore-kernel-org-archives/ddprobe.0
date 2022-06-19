Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102357B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 12:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655641559;
	h=To:Subject:From:Message-Id:Date;
	bh=pksjyYkABQQb14XfGqXvcCN5CICPpDJ6DoUDv2bl+pk=;
	b=heFsBa/6fgd1TuqBzfud9fxkEzR7gGW3z54GhHFMlJMUUgRjf18iHCn+nWBNyC08
	P7w9GS3+30vv86e16qslZCzEGJ7S+FqGapZRy85FK+m0NeTy6iJcDNxPj2KffMSAhfA
	xFfAQXdfm9VGJyjeLxFlBPt0M4aRfxJeUlWlMTGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655641559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pksjyYkABQQb14XfGqXvcCN5CICPpDJ6DoUDv2bl+pk=;
	b=Oad3CZce+ocr2bQvPVGflf0IQs7KtI0DBCFZPGMQjfMaRjKeoOwUun9+anp8en1v
	HpCwJSxo/5KUq6pZ32guhNt/EjLISTAVAlxvH/Q791/rvezid8tkDAxhzeL2kwI1VXI
	sX1okKxctD3QouwODr/GRiUhKa+VOoKbM6/Vg2tE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817bed50ef-3b40a76f-52eb-4cd1-ac40-54352285974a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13b8cac2a47e38c94910f843a6be27f15175d498b8f69e817608688930a4f878
Date: Sun, 19 Jun 2022 12:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655641559
