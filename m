Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD207A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 04:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644640216;
	h=To:Subject:From:Message-Id:Date;
	bh=1O4rKOledvYz85Kto45yDfybJuN9mWdik/756A5WFPs=;
	b=M3VIQR60EnLSv/WYoVKr3FV20O8tsME1PM9TyKT3YKbHMKwJ+N1rTaGrDUIxc5G4
	NUUrzVC132XYkB4Klm0o5k67+W2kVG0Dpca3PLmvjxrDA4vbySjUBfJ/fqZ1RRrwSwc
	MX56xYuGb7DbQ2xr/BEghGiIz2LGIcwcKNMc61j4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644640216;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1O4rKOledvYz85Kto45yDfybJuN9mWdik/756A5WFPs=;
	b=FolzC8EBqOcewI1d9nZsv47UyrRqtmJ8wJMR3baGDZclulYiIVcJ6IIBZjuRXWAU
	2GnHOyYkKLtO96+hOOssIApRtWwrWwfQRnou74tbDspjWw4ZQRjgesPCAJRL1Zu+2mN
	pWKcJwqDy2An1A5bu+v90932IoDtkaVFZLOzb97U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eec32233a-a885a31a-b43e-4714-bd77-b38b6052c9c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbfb2c00a4d4ac28d0faa20b1a5a22b4ef0ffe8d5dc1fa4c11268a183e9d4fb8
Date: Sat, 12 Feb 2022 04:30:15 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644640215
