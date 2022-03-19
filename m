Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656C37B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647727584;
	h=To:Subject:From:Message-Id:Date;
	bh=3V9eOVwhHogj2K9QYTRdPEwZzCDb6PRkFm1jU1xLKqo=;
	b=eJGru69YzVZ6TkI3/QBcnM1I0sdAZHwlanYdxWuT+A2iMBsMz+5Vbjp6TEYU1Gdt
	4c92Lmz+L9GNVn4sFMxYtTskWdYBciupHOXF/SA8gqGACMQ10s5zPhzfNnhmz/tcqeX
	1W9Piyyi2MiRptOr+o6/QVKNzw/YwA0HNGLdOBUE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647727584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3V9eOVwhHogj2K9QYTRdPEwZzCDb6PRkFm1jU1xLKqo=;
	b=iGIR7ZPozRwXPh23UX8faKgVhp2ffMWisZ0DZzUaD3BBeoh6IR4YImUZ4a2dPs0S
	OP/7J4c5xTKgOIjGDNnSYBRUrysLrp4V8Q+SkEYmX505W496qP36EGqPS0rXEyn4WDb
	G7gK2puRTOzrqv9XhfI2gP8SH07fdk901VxTZz0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa437a5d9-cde85e3b-1911-4924-bf86-46d98f8d6655-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26797160cde16220edffc2b85434d4c1b7cd83d0fcc542fcfe49107488d06606
Date: Sat, 19 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647727584
