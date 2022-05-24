Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6B77F4
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 09:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653384239;
	h=To:Subject:From:Message-Id:Date;
	bh=ruzF01obuSBk59/D8sMXu/p61+yE9ZppSY/niCu69Ts=;
	b=igXCBnB0eSTvylCgnYK8bwJg7jWA2QKDGRtIywsF+XebV8qRnzpoXE6xioC9NChZ
	Y5iymc6cmlBcAGmMYIJH2U5Dus72R82XTTbhdlSnTV8+TmNHkqYt96ne7ieIJGtsZYl
	4HCKLNAEfAB4tcMOLqK2ahQP5w3SCTvzFJXnjQVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653384239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ruzF01obuSBk59/D8sMXu/p61+yE9ZppSY/niCu69Ts=;
	b=cVuq/5wEUip+hVDAcYiVUfbRmKEYWbqJy2IotBiJHx2yJusUYX0sh/1OoOG/H92b
	zYRIQK/jGkElBScBpvobmav9yWMKQYn0xAENPmsBRrzIPkUO+kD8SLmByv+6u3MT+IY
	mgGqiVHhrkQye730awvEMqO9vhMmpKd85044cKG8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f56158c9-d1fe70ec-10fd-4fa3-964a-da16a2cb6892-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8426b6f0963e3ad494bc65e28703dff65934c44588446ec3f0675ac038bb29a7
Date: Tue, 24 May 2022 09:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653384239
