Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2827A5C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659299452;
	h=To:Subject:From:Message-Id:Date;
	bh=3GgAEmOtQMb3Mj+2ADMj26Cm7ujX+LfqW9iqZ6OwvTw=;
	b=HeFelS9uq1rSEnwAPlT8QlYhjBWnUl7oKlxBD9u/Tx3SGDtxkPIgDkoZ+LFa5piN
	bw/aTTpfHisgG90MryIh2/oFZYN8aHE0Tn6WSWvWzMab4IOcsudaSnW9M/wzjvsmi9b
	2twnAyArXF1fgQhJnH2r4etIz9OQcarJIuXMl3as=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659299452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3GgAEmOtQMb3Mj+2ADMj26Cm7ujX+LfqW9iqZ6OwvTw=;
	b=Ybh4C1BCiCMZADmY83RBo8yMqxqWK6JHXXYXHPnIu73T0ZMEQPt6ovGmhP6CnXIL
	FsKyZMkUL73Ri5wVdYPTsK3+vEPi9zu1RASa157IosJbjYzNA7nkbFngRv/m1rgEcuK
	Qzii/pgW4vtSMU4nY3H03Y2Cw1TimT1VmsK4dNHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255f45689-64156469-8525-47c2-ab97-3f47887707af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a2b7beec8eaf422c89a6c6ff7a1b0bd7a9baca39c85ac58babb4165ecc2dee0
Date: Sun, 31 Jul 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659299452
