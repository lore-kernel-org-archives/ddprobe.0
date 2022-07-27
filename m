Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE7E3234
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658957452;
	h=To:Subject:From:Message-Id:Date;
	bh=jEo6lcRy2QucQMqewYebszZmkItO6yE4u5uTMxhCmIw=;
	b=kQb7zNb1j8T5Fdi8jSTm/Hs32s6to23SjK1KXJmlH0FYNuvUj3ujRiNspICQpSQE
	ZNww+GwdKZNQxzczkickgGb0DPb7oHO4RPXWZbNYUDYPoTFrR2hqvbbmahuFPYlVsG7
	8ThhGgqG/YuQYzjdfrgOgZAn6wPAg/PQavpTkaAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658957452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jEo6lcRy2QucQMqewYebszZmkItO6yE4u5uTMxhCmIw=;
	b=CgJhzF/m4qE+OPXIFhC4ehP4p8QEGGd4+7OoeAfC9mrU4WbtnmQVn3m9sLepxnkq
	nTU3qo+/Ftwe9vqrbd8VUYKLALM2W7pB2z3tcNoD4oz5R6yfA8Pv3SXt6BTNIBS4Qz6
	jAsNvF9VFE5P7TendYjfyi1iezgAKiGkTJuESIbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824191d4f5-47a75b7e-7abe-438a-a56b-8b0fc2c3b97c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c15bbe51394e5015c59f33166892125e5ae753019b0eb4b58616f988a9acb251
Date: Wed, 27 Jul 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658957452
