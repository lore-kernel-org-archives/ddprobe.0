Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9647A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 21:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650059578;
	h=To:Subject:From:Message-Id:Date;
	bh=Eb1lmIxk0S2VhNavmWhD7ZB974KtfMBnoDTjjiRedq4=;
	b=K3c9CPeDtZ1ToKfbk3ak5Tjjd6gE/y/+jXOmOzMkEsAa+FpKqZ4jI63ECHcIlow+
	2afbgQ/0h4pPNM4uebADZAyruyUHdAIGUTN+eWUmO6jIb9ZZkAw8z1VBsWMcObpN/Zk
	GTA83PLjPp8RR7O4mNb5yVPe3wNGGDrMMVqyTRJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650059578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eb1lmIxk0S2VhNavmWhD7ZB974KtfMBnoDTjjiRedq4=;
	b=S/78PpPM0BgSZVMyxhrIqpGtyFiI5ya7BMz1W1ODDcleIzDq4T64cCxHCI1MjoZE
	hHYfkO4VRm1coJqDVaFRW0nyyvnTlC2xVhybKriWJbBH3ReVhw7q7PQJHOw8HWgqRQB
	hBs+9iLaF5VMeQ4gUlPQdUsQgJHd2PCPiQoMKPYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802f370bcb-1cc28b52-a44b-4624-84ea-b64b2e5b94cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd59fbe9c973b0a769cf90b3505a19aba83fcd01a2b1d48e318c6af74d60b88c
Date: Fri, 15 Apr 2022 21:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650059578
