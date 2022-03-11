Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40855CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647028285;
	h=To:Subject:From:Message-Id:Date;
	bh=U2byljY2XWEqSDPrnRFtx+AezC+lSyA/ISJDUeZI9Tg=;
	b=Y8s5zWnd0rqC83AHYy6tamMUZnZeinxKbRfSVViQKDRa2N15CkQ24J4Gk/bYuPyI
	YtrXFYm4I5WqardbYq48GLEu9wWTHuk25ozfnRlF/d78A3l9MdDGk2P8CqwftaKB6GX
	aY9rSen5wavcwUWD1bPEXJ06FnKai9/N5BHscqZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647028285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U2byljY2XWEqSDPrnRFtx+AezC+lSyA/ISJDUeZI9Tg=;
	b=dBU9/wuYxwxSU1iIUWrt9/2mA24vEWjUzHxoHo5e4ROO2rjSoawiSIcu6N4BJo77
	v3L2C9CVkhL4EM7H8zU0BKFbM0ZWV9/HEq4VplLoLeOsPVpKWZWYwLG43AX/lRJGvrH
	zS/00Qvv6MAv6xP8OM6Cu8g78250b/qBgpn/j3CU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a892d8b-833e236a-5df4-4744-8112-3dc614964cb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6552085abf9d4a606dd3a4ac42fc1e8edae0d761d6f1ec35a4dcca21bb3be391
Date: Fri, 11 Mar 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647028284
