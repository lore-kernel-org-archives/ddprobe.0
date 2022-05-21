Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035743205
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 16:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653149099;
	h=To:Subject:From:Message-Id:Date;
	bh=aJwkEShtizD/ACAc2Li74s5wWGfWiAB1ZRfM6s92xIM=;
	b=d6X6BGMG08b+H7vZtsbeCK1z0RnqUh4QK8Za35C8l7XdSjdgnxwTFS9Me5fWEouh
	Na5tH5r/LCiHK1Ak+CdfTHUycECP6hVuOvaxC/YOA0aGVgkfQLRrwIek99l5yfInxx+
	qKAWaZn8BhL4UmTzb2HRHmef7RpjIDe+DakoRt3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653149099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aJwkEShtizD/ACAc2Li74s5wWGfWiAB1ZRfM6s92xIM=;
	b=b3AImdds7MiMJzd2u9BsAeW3ujVTxfc4iN8ovZlW87rAA5kdgNYvavaYug/5B3gY
	gwkSIq85r6Xi5HLJUzRIeeEjUUHfid05JWFHP3d7Ai5MWu774n3vRrWlniNsWWzFc3h
	5cY2N7gqP0E71aEtBcVubgc89mMGR4qFtrM9KjVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e75d6508-b6bb4472-583a-43b0-93a1-56f271626b39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e61665b014ef29792e1c78999583c518abf7f859c63e5e301f2a1b44b921060
Date: Sat, 21 May 2022 16:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653149099
