Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF454C95
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657654612;
	h=To:Subject:From:Message-Id:Date;
	bh=4XNmsz4il6LyjHZaE51G3xG8FyZQR3OJH9D6iPVgWvE=;
	b=YfaXr+fkrOZi4JBktoWHPdOM8pjpcgO5XlCKrJP7TvB+PwgRTgmNDht0dYWLjqUc
	CeTWtuPsuy6bE+8qjM1ooCHGQDplV5564BTsXBrneVBZEq97HlIsBm+lmNUXILEY/6t
	ptMeSb/S5MxvE6nsJuffQtjDksGlx7mNDghswFZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657654612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4XNmsz4il6LyjHZaE51G3xG8FyZQR3OJH9D6iPVgWvE=;
	b=kbeP/AAXdkfCz/NJM7bmsMgavSCBO9BFNbFx10vp51szip5JGLo/cZJcXatz8v+o
	Z9KqfMcL6ng7rkjM4IuyJd1c85IW3QMxWWE9isxDzxN8vX8hLpA/ht3GAeR8DwnfYng
	USMgQxfJE8RCFJ/yLCuq9xh2u2ojVmeNs8/X0BTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3ea11b0-fa0ba808-85e7-4085-b498-3fe7d7da7745-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2af988cf2e67b05552391989346ac164c0925ffaa9d838dac51fa899c41b0b1
Date: Tue, 12 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657654612
