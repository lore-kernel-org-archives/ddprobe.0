Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03267B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656495412;
	h=To:Subject:From:Message-Id:Date;
	bh=YLaqcNaL3KnQwfrfkyfjYXU2AqljxJKZuQGqvLifz6o=;
	b=VPIW4J5vFEeZltVVxuF3rqgbm/HTsjPL0LCI6lg856oNqC/1dEb6imrCKqcYHCYB
	gheI9x36FX+sUb3CcYa237HHneXLBVi83isExUCKZR5LrFLF/hOZP20kkxOQtd7qPGf
	j4RdbhbBtb0sPiBx27DBX6a8phvyHW3h9+LeLaIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656495412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YLaqcNaL3KnQwfrfkyfjYXU2AqljxJKZuQGqvLifz6o=;
	b=IzX0o9kSIdL3MewirvihZ0ZRGKmfkNd48xNtkcPcv6kVeImB5Hcow5B6a8ogIXpU
	ViZVz1g87EyBZbs0uyICUbR19FZKhJaHv4gZn7+EqSeFHZBnGmRzvgAvDVjtMmXVgFG
	ohKyCbxumQ9inOrT96I2LVVAFCxnYA1+Guw/x2+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aed21438-0ea9f1c5-6af8-4539-978c-e41af455e608-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 735221a540fde9266260dca97865fdc0ef4b8aaba2661f122988749b01bf64ed
Date: Wed, 29 Jun 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656495412
