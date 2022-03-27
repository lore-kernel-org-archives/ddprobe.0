Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CAA3234
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 14:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648390978;
	h=To:Subject:From:Message-Id:Date;
	bh=0+sUjfgVvoFkZXaZD50E0ATX33zIihdJXyKoHkAEKuQ=;
	b=XMXywSpvIqqnvHwClQf+oEvIoQx9bNJyyTcs5eIS3pw094pEIw/kNq/m3m7aq55I
	tsqeHUCSneV/0S64ORSBHMBjdA1Gm1jXx/q5U/JRIMGSV4jm2b8dZA6sTNpfO8cmmHl
	ih3a9nUXsQQtQ1MUq2AtdAFazozJR+o/iZqzWpak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648390978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0+sUjfgVvoFkZXaZD50E0ATX33zIihdJXyKoHkAEKuQ=;
	b=T9VWQn7/HoaGGmpp+Lu4hk8pNckUYrmCUEXZXcAcbrgx+0bfG2JhJxl8PsOwtIR3
	2Qeqy4wCh8EMJxXsAl3ARQOhVJJ4Ma1l/vEEBByZdA42kqMkTwxaEGrOWL6uYx4w3dO
	zHyRREDb96cytlaVUExrtslqFyEyIdYoSJDbhbgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcbc23ad6-67078936-bee7-4f31-b880-20e7611bedb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03fe1e884ef81e078a2671b90feca272a2b877f22a305527caf06388b4386fb0
Date: Sun, 27 Mar 2022 14:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648390978
