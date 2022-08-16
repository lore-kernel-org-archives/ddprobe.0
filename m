Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5460B5391
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660662652;
	h=To:Subject:From:Message-Id:Date;
	bh=dI+Yqj9RKHqofpe2B01rlWC3+MzXNpbMeZSOKF+6cLw=;
	b=d/MZEtz3uzV3A+Kk+hsfcXPtDRPMDkCsiuIT5lTfqEv/L90LzZEwLccpzEnekDb4
	WIFUEqpMJpvW2NPIoNq5Oh1XY9XBQWxqdnR3BSgltlhFHAgwqHTN+Wq8o4OnNezlaO2
	CBtk4wzYdQmNO/9LI4bJxDihwuB+8fGJ8a4oIgLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660662652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dI+Yqj9RKHqofpe2B01rlWC3+MzXNpbMeZSOKF+6cLw=;
	b=Efg27zS90jFxOe7wCO4KqCQZ3+fpSiLtyf3SdbOXZZfwHy9EvIuiozlhJHoBu2Qt
	XZ8ZzOHSy7YvMAqmzEkCEq2Af+UIzzwi97TiGZG3lkW4fj1S7CD1yYuUuanYySLREv6
	8MwcmFv7ups1KuNfhlRsXUQVgy+lxHxGm2/kuUa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a7351e62-8aa39f20-6a6e-490c-a2c7-f18ace2397bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 459469004fb217c3e041690228155c2e647aacb1e152c2c4f20e583020ac7a57
Date: Tue, 16 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660662652
