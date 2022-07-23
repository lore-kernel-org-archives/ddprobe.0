Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153FC7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658559412;
	h=To:Subject:From:Message-Id:Date;
	bh=6z/mROjt2qZzSTH44M2Di2Qi70mLdxVIoFtJhzpaQDs=;
	b=LIsKjd6ejDY4qd7gh9Okyetp0bvjF7gTGHoIe4tcfbYhI4ro2DRBBq/kqkYhcwon
	HClipqv5mmEP1bxTCegjvfVDIqJgs0SH9fXOWTlXS5vbzZOWse+6h6wjHpRJ2WJt660
	83gIXZjX4PvDwZnN98kxMQh2nShFdjpDnuKaqoJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658559412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6z/mROjt2qZzSTH44M2Di2Qi70mLdxVIoFtJhzpaQDs=;
	b=hvNBr1AJaxNplPYlkYxjSRMQhVIj3oiByo4YwJssG/08rFRBz55NsRbdM4wmqPkx
	FxRAT3nwvl/MklNl7zKQmPENIPiI0rU2NEMrtm/FAxQVj4+8dqRyBeXghndA4TcasYI
	itTKyYKcxB9wMN/j+UbrFAyRUPeDcbhbCh3ffoqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229d8384e-9d4ea96d-0284-4455-b5f3-5f4919e6687b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5185717208fbad5db208a3f908f77cf6299b2c6d3f2f47578d5e9222ae3cb2a6
Date: Sat, 23 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658559412
