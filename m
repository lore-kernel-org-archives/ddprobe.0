Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C9438F5
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 18:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647456985;
	h=To:Subject:From:Message-Id:Date;
	bh=jr/Kxz+9sF4E1HCOmAWo6J0HfHlZvZNZUcJ4dNZHSaQ=;
	b=ZDvs+eI0DSLUV1EhEmZ8ZT2xZDi5tQWWnEFH/C5qDrN5jvsdg48im5j6RL4nIFyI
	Fj/aUYtm5nw5zD6qGL4kUsHks5Ssukp/UfZWgWLNrIjbQrChbYQ1NPqjGYZITtD28PE
	Fk6Mc18SRSK558hV0N/s1xpXdPIPtAorH9XF8KEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647456985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jr/Kxz+9sF4E1HCOmAWo6J0HfHlZvZNZUcJ4dNZHSaQ=;
	b=D+eimzUnpYaFGSzqsRSPVrdSG0sOA+/SdpY1md/ZBx0oaeTHZ5XcThEuu9GGGNav
	TgdSOJVNroVjkZBDwLaEu3/nYvg2DfR/4ImvDI25CuojEdyCoT079gN+g3YdX9p8ruC
	1bi3vgDuB4KU57uCNLwZAj5pTH8A+/Ln23LX7fEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f94169f21-d975007f-4a8c-46f3-b3f5-61a390c83565-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5427d345cb84a76f944c9a85a39962072f1052ce8f5a11b295e5cc983b37fcc
Date: Wed, 16 Mar 2022 18:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647456984
