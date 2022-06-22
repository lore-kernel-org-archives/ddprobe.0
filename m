Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329F11C26
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 23:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655940359;
	h=To:Subject:From:Message-Id:Date;
	bh=sBqqV40oG44wsgBRDsW0CGlylA1dEUkGcn5TJZt2pg0=;
	b=hFgPSmVt/j6Jogl9ISdDJ9UPuk5ALPe294Qiv7jsmcXehUllmZsy019+xdBVaimp
	X6S9gKOg7C/zgDcKenAYlQPgvL65WxGLEwr6n5foM+/cqaSk/WWX1O7sftzWiNuMe6r
	sqFzKY2z582qbNGrBSKoxIJMOdif7F1TX2Eullgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655940359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sBqqV40oG44wsgBRDsW0CGlylA1dEUkGcn5TJZt2pg0=;
	b=axWi6WURDPnY4fmasNhRkcv0uXBmAhL8om/rJu0jQomr5VgmHTVy0oF39UZezrkv
	7KvIswDp9UbnK2fCZ43EOMplgZ0s2X5S8Wzc+6WhfsI9Y8az19zOzYNFdJGjRfYJZrX
	TNKgE9O/z1UqWHCmHR8/6XHPZHoX+ZVZ4OPV/zQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818dbca485-03b10d5d-a883-4b68-978c-45510ddd99b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc429bffe3e1ac7740ffc15f566fdff2a7c772189d9e279fca5540c7e9407be5
Date: Wed, 22 Jun 2022 23:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655940359
