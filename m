Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095987B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 11:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655639639;
	h=To:Subject:From:Message-Id:Date;
	bh=Z/Nw9SJMTE0l0SudknfXQZko0RfTVE/tTJI9/LuqoNg=;
	b=iEokWspZO/17WKs9b23DI13qqQJJAjhq3WrHx+PzfFjNxB9QUhWrrPTxS9J+7G+L
	8+2ORdZrkJpHzG2UmSS4N8Phz+NhKUVjqFHYjGgKyQB4wfOFWHexITdWKGSZns/krKn
	2qBtZcyq2EzQ9GjLa4hSbaKlTLRzkBQXStQRHqPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655639639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z/Nw9SJMTE0l0SudknfXQZko0RfTVE/tTJI9/LuqoNg=;
	b=TFAxBuOO7n0Vk4W0z1+EqGj4CQt6AAtoUNmRUS+Au5LK4XupgUWx1VmjxxWf5asN
	SK7irlO/oGSR2bv7dLfEbGfpPFImFFtklM4BGXWwR3P2FNaPmamRbBSUE5q01yXUwgE
	7X9jY+GJ+AvEIZfcfOFryoE3lg7X7MF6GdSpvuA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817bd004e2-0193dc4e-ad85-4936-a2bf-8b9850d0ba3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fc4fa5a026036cbf095e0df4ba421fa99587a50de5ab65ac2c29890f5ce636c
Date: Sun, 19 Jun 2022 11:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655639639
