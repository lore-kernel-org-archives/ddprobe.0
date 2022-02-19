Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7FA5580
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645294884;
	h=To:Subject:From:Message-Id:Date;
	bh=vEJwkZS6KyRegk4jaIavzVH+CPCWNz+8toQzVs3Gl3g=;
	b=AquAciXCOOpYcjAgNZk57FevgtLeDFWa8QlMQb1o2WOS54aILO6yyt6P1rODOOGr
	TmcPcW+UW1l+0OobKxCx7DPFddafwpHVZdvRktKmadYex400Pm9wypuZ6Fiih/g7DPb
	0moEeB796Ts9Lch1VCIyBeVENVwiCZbuD2QQGU94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645294884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vEJwkZS6KyRegk4jaIavzVH+CPCWNz+8toQzVs3Gl3g=;
	b=hhWhzvYid6ctVQKQotYb7DPs0qefLEM5WKHHwRJCQKNKSkxrYL+96dBZddMz6TFR
	QYecb8t2mNbVg2rw2HUN/spf2LZACQ9P8GyhuORBWZ8t1pv7WMUtKT03x7giNXWdvLT
	k70y4cBR9DZTdXC8FtJ/dwJuYTIXeNlTN88kipuQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13379798-40aa453f-c300-4234-9e6a-3fce3f88da75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cace878b4dabf587f3a26b32273375abf703c1cb394095f5e8ce8e4f8078aaba
Date: Sat, 19 Feb 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645294884
