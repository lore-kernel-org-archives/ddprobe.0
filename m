Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE17C1867
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 17:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650476038;
	h=To:Subject:From:Message-Id:Date;
	bh=bDxLwRH9dZhMpTS5TuPNgB3Ai94JffUR8B52HZeJwgw=;
	b=S/QK9ywIjiiLH2S4WFmT+ZXhH/U+nMO2r+TPqXhO18gV8fvUbOk4gqPZCNsfADlR
	Vi5CcinlYGZajEDy/6cKXdMFeYlBfY7gICE2vlZbz9z4XGu+yM7QGboIkqDn8yY941+
	OndjFmdPiKIuCY3UmrRbjJfg3dKkZ7nCE8mKK5CI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650476038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bDxLwRH9dZhMpTS5TuPNgB3Ai94JffUR8B52HZeJwgw=;
	b=dl9dNCqes6fELA2pegH4am0DwoEv6adRRwq3kF2eezTBk2JY2XeznnnmaWpQiT9Y
	vijpibMOS7NIllovv+wyZKZsmaOIHNJEbco0GLHprZextJ8GeBQJKqDvYNGr0j7g9sR
	eLxmIMRppz38T/775Ol86qmrloK+wQ9FSqnp55jA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804809b890-5f78da10-4c46-4e11-b17e-c51df0ac4211-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65ea40017fbec6944056b33bcf7ce0118c3418b13420c6120c01c788d194ae73
Date: Wed, 20 Apr 2022 17:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650476038
