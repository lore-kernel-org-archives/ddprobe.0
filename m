Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186E37E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 06:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654152839;
	h=To:Subject:From:Message-Id:Date;
	bh=kCXonixbpGnQJPFPZs2WtsJdkEBLfGrsYuPhu9DqpBk=;
	b=hW3gfMzsTXGCOz3DmSr31SFpSK+CVfqRTo7g+QRXBmwc+3RtfVyCNksdyLU44E85
	M4v5Me9aJvnw4bEMVBqIGKO8dfPncoajGViq3f6/LzCNGU8cJWOkvNK0pB2SECeHpN9
	Ht1EG5O8geBB0EQI9d+PRaoMqUYUFMWxIvTDhJMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654152839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kCXonixbpGnQJPFPZs2WtsJdkEBLfGrsYuPhu9DqpBk=;
	b=Xi3QX2LPUGZKB/NNlKkB0iux3rHbzXV7Xl57XPoHGlKJr71ctFi5ivfuVmPoIhPv
	Dfu97YiOZa+eO5K9Av66HnemkzX1Ys8rx7ujayMk8BO1SbHVwgVxd89CqwfKKmyY0dC
	OkkUussKAafDn9HKoxdQvCmqF/ksCJyHO4kpT/jM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018123314060-9f87391d-4585-4845-b645-171695cd617e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caf36dfd95a3f43f82672a84c46ac6f2fd278e5d7c7a0cc10fc8879e3b94f989
Date: Thu, 2 Jun 2022 06:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654152839
