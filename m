Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6BF27E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658615212;
	h=To:Subject:From:Message-Id:Date;
	bh=z/xNZbDGG4KAYg7KMKqwUfHxbJpCjDt8sE26DhEfGhg=;
	b=ZR/71usgIBNCMm+3HJlEax/cZiN2hOrJALojHJY4XnDc4XCAZmT9SjhORf+RCS1t
	H82eiA6AD4GpHxbsdtcH1SBf0SXUBEpl/8X8/uw11Uvmi3o2NY/MTiCkPqi8d7WKN2N
	p4pgNt0D8/Fnsyx77vWQySfLxtlSX8+rUYTo4cSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658615212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z/xNZbDGG4KAYg7KMKqwUfHxbJpCjDt8sE26DhEfGhg=;
	b=Q7C7eUNqviO8RorK6ofjkDd6kZIP1mvqLZhWiUS9RjCANm+Cx3kOLy/nKPO5TLbg
	PkK/Wdq/WQNydN7O8/CqwAHcWDPj9DeN9H9axyOqEp651W+vvJa5TD5LSrSXmGzXnlq
	8npFcVySGjJrFM/sKBUVbhYpUP1hpImsfILLWKBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d2ba8e6-ed875152-aad5-4ecc-b7eb-c7a2e64b689e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 781b525952e8f01e5903066eb6521574b1e9bf9852b94c6daa7b0ebbc6d554de
Date: Sat, 23 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658615212
