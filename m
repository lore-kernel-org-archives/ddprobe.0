Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9F03D8E
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 22:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653429959;
	h=To:Subject:From:Message-Id:Date;
	bh=NqD5iZmli2iQi9IsbDc925kDpKZqoOhUpaOZHwa5pgY=;
	b=CLmWfsaXmyAqEKnuUBRL1/xh+kt6nAh/qSeKu8NUipk14s+VjvWSCwkYUoDcUhlS
	BYa3IEbtj2iSQ6hHPVPULNbWmprxX4b6kEyU7/0/qU6EKtiwuTE+Y3BAlnZYj4/EgXQ
	3ALKfHmQJuHAVGweLShRAVYjb+wenXTkhrHrFy1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653429959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NqD5iZmli2iQi9IsbDc925kDpKZqoOhUpaOZHwa5pgY=;
	b=cdHraHs0lBqtMGSIYW1m7Nt8NbzYZMS7SPCEjytF5UIf52tGdHvh+HaCsAhyMJAe
	MtmvFGGIfB8AxCmw6oG2gsl+zOSYWr63H+miH7AytII1O+doPqvR6tdeiDoJYVUBE/l
	g2tmjI38M26CMbW7rom9VvUCdAaZP03sp6R1ThVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f81afa53-0153af45-19a6-4af4-9ecb-1c74a747a9b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a627e47d43d4fbaacedeaa3ebc24b6c0ff5786e2a2e11c3b18fbbb5ba5923e4
Date: Tue, 24 May 2022 22:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653429959
