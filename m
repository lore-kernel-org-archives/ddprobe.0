Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A3C38FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645909284;
	h=To:Subject:From:Message-Id:Date;
	bh=BadepSVspx/zHWh6h+YTYGC5zyeEwNgKTLZB4j8Xnao=;
	b=CyXmC+LqHwItYJrdXYkqun+XkufwF1gj1CQua5wSxS+IRfoMpJvYFDb6BXJnPbli
	JjTFL8/nBJpBSBlajYIuci9k22W8bjpq4XXJQqooVx11+ViHTyAcR1IzIcHIYjuC1qP
	ClKkO+WjPYOfzrjzw3T2x4oSuYO05qrCo+tpd+w0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645909284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BadepSVspx/zHWh6h+YTYGC5zyeEwNgKTLZB4j8Xnao=;
	b=lvcdLK60yuzuUMKOoHbUCGpS+UXiLZqMUw4kM4QcXatkIjMFycWagoStkP0Ysn2l
	EfSsRlThFjN9mG0+muq3RsllBC7+PioDezp0JazJrj4p9XCjO44l/AKEtPkZl/EjPhC
	4SNC1jhWEVJehHy2c/uIAXlelRqTIGGHI4ACDUvw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37d6977c-e738fbab-58f7-47a9-abeb-6a611da8c185-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08e731bf27068b291644d71fc81f3c78d878bcb8e3a36567e4d816b3073c2e8f
Date: Sat, 26 Feb 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645909284
