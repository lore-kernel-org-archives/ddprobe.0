Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237417B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 01:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645666585;
	h=To:Subject:From:Message-Id:Date;
	bh=WWAuzN5pUGuUAi6MdEhApNNWals54pOfZG4jmF8Khg0=;
	b=mjtID9GA+dWq9Ghm+IvAvGPIbHch0y4ITHZJC1rRcVL9iO4MyQbrixeqGtl6RI9c
	OA1ZFUca7Q4tdnxOtwHML15+hnXoaETvmLB57cSSiMswPX5lZdmZF49G+SmFRNKsFKu
	TDUXTiythDbXOUeS//HvhgB3zMazSBowfPKtoO14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645666585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WWAuzN5pUGuUAi6MdEhApNNWals54pOfZG4jmF8Khg0=;
	b=U8JjO/8NPlrkS46tQgr0WI90MrdflZ8dVk7DSwd1k/XH1V/+Hxl6kbuGNVcEgyWM
	XPuWub45X+t+p5PTQbu+s4AWzSsSGA9gpesJU2qHrKa9aWhasDMG1H1cUZhD1epQyI0
	QSfBA0NARQmoLxmRRZg+59/gTMmJztBRPx6Zgoz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f295f4963-fd0f485f-c0cc-46ac-8c9d-059c6072037d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ec3b756b82ec1056bee973db09be50f3072ab4c137ef6b23355d4a1f00bab82
Date: Thu, 24 Feb 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645666584
