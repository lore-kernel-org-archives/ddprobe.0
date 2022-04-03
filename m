Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB9D7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 03:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648957858;
	h=To:Subject:From:Message-Id:Date;
	bh=bhSNaqXJ71lXUZr7LgNDKIysLe/kUcM1pQWcrJLnfUE=;
	b=OAW2LduO/IzLNk6npzQDPj73gWxA3PfQka1t5CJfIIAbkrU8oAT1QoJZQt4ukgy8
	Ihq6Vy3kRnftiURPoDM2UcBFAfVKgviLn65ANZPuBjHSSd3GEF2WRHASJBkuv/C/cvo
	cSeBz8Ub9dlWjcOQ7j3wNUBbAh5SwNhvymA6bVRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648957858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bhSNaqXJ71lXUZr7LgNDKIysLe/kUcM1pQWcrJLnfUE=;
	b=Dav6TYGhqWjtUzScKWnH978vj7DLCHw2yNf8rSh6FWEUMprav/c5BHVlBtMux53w
	0n80JrRAHGYsksAsxkS5BGXbv7LU7os4MwAKriTgNGXSwFyfch19L/OdqIjbIjRpa+h
	+SEdJMbJVxJyGMmM42jKREwVX2w1ozwt4nzFZoiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed8c21db-8265c90a-0eb3-4ace-af21-6aba6f921c1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 326075a37043730402d4c785057ac25e4ec286ade4de078d9bfb590d79e07e50
Date: Sun, 3 Apr 2022 03:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648957858
