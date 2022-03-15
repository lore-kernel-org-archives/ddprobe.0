Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A6C10F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647307584;
	h=To:Subject:From:Message-Id:Date;
	bh=W2NoimahM2yxIcZNXuzpdVauyRIsdjOOquUI5pR1gKk=;
	b=BYyNiB1bZUrYhZh1MXHdaaIb8iwkAJEYeArO8wAIM4QSZHBBNHmdJ+lZL9yCqVr7
	DepEAhdHRMZhMsYMEnfEt1LbVvoSorgsqBVfQ6Ij1H45PZma1HaQOGcdTewP5YC7fdU
	iiT6JOeJ4N3ZDi2Gm9qUn0iDYqhSi1hvqBBUw5ls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647307584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W2NoimahM2yxIcZNXuzpdVauyRIsdjOOquUI5pR1gKk=;
	b=kvkRKm3eZrUHUpgXvRVUYfGj5c8rFFvt3W8A/c6g8duNkZtmqK8EoIzZ9E5SLJoD
	IgmH7PV0GEFSYdgJRCPBvGEouoP7eajwav8eekJ70Ew3SUgKbVuyxRZQPP5vvaS9EtC
	xIY1WRPI2ecOv1dRDf/hf17IoZ98HpyS6tjYTs5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b2ef4df-bd4acfbd-5c1d-451d-bf9e-c056f36435e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d6d59012072f33682c88c5b5c0b2d1b031cab6e3d409abd76e8c1a51fe3523a
Date: Tue, 15 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647307584
