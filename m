Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A562446A4
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647448585;
	h=To:Subject:From:Message-Id:Date;
	bh=G08w6tCzlRCB4ACEhYEEL4xpT0wMB9tgiy69qYGOUUM=;
	b=Y6xDwOJxXEDsRqvGT3i5odr18JeaTnc7MTq0TaP5pG9hcuRWFvmtc22SJA4vIiDm
	UgEKM0bs68yzVw4lWIJMCzTQtAl1lNd8eKlao6YuvqAfv/aGS2aAhM9mRRbVSXM+Z/m
	eAZtIX2vhHt8V00JPKp0dMlTwX5RKbqnsW5p5C+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647448585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G08w6tCzlRCB4ACEhYEEL4xpT0wMB9tgiy69qYGOUUM=;
	b=AE1uasSTkUC/fGWmCPjUfphnoTplLlUluoFVY0CVQJ57TsxiQUmsOZQTUObs2wPl
	P09MMdpfgt6wrP48fRuBnu74qO+vkth6HHPnX9GL23Y5iW3HDFCoLDdVjbb8xktU1qI
	cnTeP++LjxFPLSF8T/7qorlWJPxtbFEabTMkSIQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f939672a3-3773ab3f-3216-4810-9c9f-306e37fa924c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afc7e9c401a5dcfb4db6cfe04686b42d40ac1450a37198d4ad28fd75800199c5
Date: Wed, 16 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647448584
