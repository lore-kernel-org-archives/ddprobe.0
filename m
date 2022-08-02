Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763E17F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659457852;
	h=To:Subject:From:Message-Id:Date;
	bh=WuDRzupkKmIbjpv/DaRIZaroT3KiZb06Zs7ZGTf6xHs=;
	b=lntoQExQ3/lrk9KwMapFhL5Axpzofjom2BnjiW9yLmQ1LtYWsbKims4qqSrhnch5
	Ef1bv5JI6G0maCEnrPRRD/p6CsuM/QGTPLHhksofNtfAYkGHM0z3N3z3J7LwECR42Bp
	c2KJ95l1TSLPpYuv4ja2frIGBLxW2gThhhhlHkuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659457852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WuDRzupkKmIbjpv/DaRIZaroT3KiZb06Zs7ZGTf6xHs=;
	b=GQTwxlTbjt1ILzdhAuDT163Bb8qIX1ZWkcrtGy0l839nzWGw8J87rcN9PVsImYPe
	kbmbBHroELLND8J0bFaRbhDhGnjsgeG0fVrW8B6BzZ7E1F8UYp7R9onvE7OmNfegP31
	Yt0a28I7PyAietOvMPpQXCZjfeuiAEUeGjNZyJhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f6554d7-b4ece31d-a1a1-4192-9459-7ec7924353c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e70afb51901d9ad9482c282979f954cae8835d96291f895554921721356ca97d
Date: Tue, 2 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659457852
