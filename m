Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFA410F5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 03:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654314419;
	h=To:Subject:From:Message-Id:Date;
	bh=8doJP1Rh3TQUatFKSKgc69MAXQzN3I7EQXbJQOlMrjs=;
	b=cp2OT/3ZF4cMOkdN/biyVz3OzrfUPwi3CJ34lG0g7BNOyHM3umBt9ZWv/d5H6fTY
	VIwvTHphe9W4bSXqN+9FICr6uYwxd6vmUMXkylk57o1p9F1nqmy1ICAcc9RAGcztJFf
	nhk7APiu+k1IDp2foP6/H3W+ruEkr0uhCyBAy6zQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654314419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8doJP1Rh3TQUatFKSKgc69MAXQzN3I7EQXbJQOlMrjs=;
	b=PJnYhpoQNy/1H4RYpJd4cjQ3DILc+uzc1ruLhhMFgNXQVpI9pNE4Gtn7wmcqJFnt
	1NBWk6P6CD2DzQirB/zp91sy8tuK4wytbUEd4bnoMJERAcHWjyeUXHhccjyh7NA91BE
	lHX6zbHYVJissY1+uyKtmRGs+xY8Jb8Py7cGANrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812cd2c478-821c32d1-38dd-4a82-91c0-a918edc030d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a9b809e0c6254603f812bd83d3ae0712d63111681ae3ba1b674189ae8afca3f
Date: Sat, 4 Jun 2022 03:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654314419
