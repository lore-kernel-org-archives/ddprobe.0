Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6179D1C20
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659850252;
	h=To:Subject:From:Message-Id:Date;
	bh=y4CXxRevHBnxOaoHmBr7r3dtXdydpCouH+25sWkI9/w=;
	b=KHHN1kgJVwPbmMuHsKEJXcGws8IcThbZcH/3GuM8Kt+VbpguYUi1UI1NeGKpjaEg
	uHmbR/ytqsMUMJg0hvjwd9+I2Mz8YYc6hXL+yo5wEfMtnCqAQPRti7SFcQtb3aJCnO+
	LdCfA0tDMUyT0aT+5MW7rUl/uEfM21OMY0O1o2jk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659850252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y4CXxRevHBnxOaoHmBr7r3dtXdydpCouH+25sWkI9/w=;
	b=T8mDB38MwMkwmW7lQrnC9hmdH7lRq6QoMHMkaPu5vx6rk3IIeySMro1dGQ0DwSQI
	1BkwQ/1EJ46L/niYtd+j0v2Fds5Gzp6N3OpS60GTQ+TWo13WR/c88sArv2AgkoKMIgJ
	ndL7KcMlIetb9qoY9weUPrBTLTA+jVZaqdxzee/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018276c8e121-b31baef3-c680-4182-b25d-604c8e4669f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 392472456352c05a704c3274d274bfbf33556f5c40e5373303ec21452cbda899
Date: Sun, 7 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659850252
