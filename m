Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0332F36
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 12:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654690739;
	h=To:Subject:From:Message-Id:Date;
	bh=+GkEXWQO3rGAvAk8dkpSInBEPxUMVoykY6W808PIuIg=;
	b=i7++acoZEqtNAo/SuoU9QL3kcy1WFONsDohiPsOrLUk0epN2lN2vbExYv10ZkcqR
	Zg7Kk0yQixhJm6WnazX9QWnsP/4GdLA1DYk7j+oleqTkyo/SjX7KoYbnsMVcLqvsqgy
	+JZfKGGtwKQC2b9VjiGbXlOv17QEMP/46x4Ux3CA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654690739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+GkEXWQO3rGAvAk8dkpSInBEPxUMVoykY6W808PIuIg=;
	b=E9LvMa/wN3Or2vgGXpVgn/lKex/B9AiDzZVLs5830v8vOdhcArcDG0U7YxPpa9yi
	GqOyraq1M+bXAdH0DF9OznRsH+ISaZrpvMdS7PTnlFt9ILxg6KdIaB8Hmyv7ZZHfJjA
	klsKewjdMWOYU6TUQiY+SrZE4uk5m5gAEcIJS3Dk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814340f423-1ef98d86-b73b-44fd-8a7f-c66e59b25a17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c70e777fcef67179f68f773c18719138b5f8c54ceddbbd038eb4cd277d3b7308
Date: Wed, 8 Jun 2022 12:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654690739
