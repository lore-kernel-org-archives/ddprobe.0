Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4671F10F8
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659763252;
	h=To:Subject:From:Message-Id:Date;
	bh=THa8hKSOw/cEUc5T4ZcVsH8w9c1yCLmxkPfzql8VhpI=;
	b=cGirZChgkIAeOZywAIH5u3n/4D2EHdTVo/yY0jDyNK8fWHeliIGJmHCoCmfWnf72
	fkRFjZo3oWHZ5RunzOG694kLjijJmB0Nh2SprGBVIOqdC1VBCivB3Yffj4MpsnETWzI
	1XD3O9T9FpCJ/dt9z8xCXq69cZdNlYCqR2/yBeus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659763252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=THa8hKSOw/cEUc5T4ZcVsH8w9c1yCLmxkPfzql8VhpI=;
	b=JWYGYoXLul9tpEGnqj1dkkSU3jJaVWMOsp3wB6fM+0WoqC30HoZwsJ0c//Jiyxyo
	1DZMWBGIKyCBdNR/74jJXup+Acoahl/r5+djJYDnn7BR/QQGEjqpXIQI5Q64mC/XMAk
	sFjhxAfnWcYtEkmsm6fI5JSVdfoWtkjeuBftq+dU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018271995d5d-111931ac-81d9-4d89-b3f7-4da80335164d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 458dd0b000b561fcfe75cf1bb3b64d3f8ac8061ffb0079f4c80b29ec9478b35c
Date: Sat, 6 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659763252
