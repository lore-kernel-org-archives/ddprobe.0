Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1C83203
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658244412;
	h=To:Subject:From:Message-Id:Date;
	bh=TYgBYxUy0eeTxHpvwieL0lyFr5No11SWf6UoG1g0h80=;
	b=O7uxu7H/lNQcng90AoMloPNcRCyo9rrnWIRzYRVbk713B0rkLtEyJQeGsyzElE0H
	sF2Xx8PrOv3F/E9/ciThu3xRuzFRJrficaujuaOBUHUwl9/m+BXVPzf7a5tTumD8PYu
	lZ5lHFQ86c2qelbKzX1mLWpGMQ1xpz7MCA4ChqLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658244412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TYgBYxUy0eeTxHpvwieL0lyFr5No11SWf6UoG1g0h80=;
	b=WshID1wu7u+PP9SariqYrOWaWA80k/dftxI+q31Tb9TAuwj5oJ1Pc/jM2PGGHhds
	pW3spcbWHu486fIRDCbQVNsVGexCiGF1RCiFlqC0ho5mpms3DHZwqW5y+NvrpqBlT+N
	c6yqFIPV6/ZroE3nmT+Vv+KXsCOUuHdG73xpm03E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821711b399-1c134e5a-ba9a-46ab-8323-86d9fd455d8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 392f51340e329654fae1d404853b4f4ccade01b3332b39750c9de64ead443eac
Date: Tue, 19 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658244412
