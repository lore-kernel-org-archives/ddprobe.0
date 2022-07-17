Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC6C36F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 02:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658025412;
	h=To:Subject:From:Message-Id:Date;
	bh=NFze3LY8bJqYGorTdh//IcMWPRSZwm/IRYldkDSoEiQ=;
	b=jVA1w4LC3o0yPnNSNFucAwFneThM7DxLK/oKTIAQUg1k2jrLagzquUq95uQSALOd
	laA16v8eOeBkP/e08IQ2VtMXna5EqaD8ilxrChMhjneaWpofkcu21nQJMgNXuS3LTPB
	3kYwvzDDr9+jMPQMyUWW6vZWtmUotI0PrCktiQEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658025412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NFze3LY8bJqYGorTdh//IcMWPRSZwm/IRYldkDSoEiQ=;
	b=Pq6eXRJKZK34qlvhNdoSKr7iNwm1b0v2exzVbxMAXjCYTJraCKkxKanaKAiJraZe
	KVKnSwvvATcKhwcMA4EWnXtoM6Q0l8ePhE61QCTgizrKZkQB2JREkofZSJr/QDqDyqp
	0Ss0RqVYQagAl4PCp7i/nNp5KokTX/ad6+RI+vDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a0406ee-18060e4d-ba74-46ce-9892-b52b8b0e98f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b50e1d06666f4077980dde807c04242ae99ac4f5e2222f121c0f4895ef1905d
Date: Sun, 17 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658025412
