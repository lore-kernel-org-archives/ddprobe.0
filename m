Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4EB3670
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645068385;
	h=To:Subject:From:Message-Id:Date;
	bh=1zutOLWCr03m/VJ+76RJI4T7gXaB0cXjo6acSmfymt8=;
	b=PiAyWIVel82ykqjMYwTlp3iYTI9HUXbwOsutUhJcMhXxjRSjrxYk5dx2Ihr57O3V
	mv7DkLDKeBq+myZtwtNVtalcez9vNLw17GSq624TCwvPel3B+fl+MFWzBJmmvJ8OeWh
	aSk1//rbkd3/Uwmn12SjU9IEthjnY68A+V9Wku8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645068385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1zutOLWCr03m/VJ+76RJI4T7gXaB0cXjo6acSmfymt8=;
	b=V8+9VqPaKAiDQJ9te6+vwkW/ss7HrxPCg5Fxji/L1X8x3oP0Ffl/kcQoUcCmn+1L
	Br2Ut5eTSLWEK3bJyhLrlrOc1oUWh2wu3Vc4Yd6gv4ZBJIzgfBXEPLhz+H3/T0SKvhR
	uq89Uc3hixNTyypZVOx4KI0g5Ll0b8Mh1BGWviKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05b77a64-dcf2f3ff-0f79-438f-8997-e6cd474dad3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00f558a6cb6a505721b6b4b752cd170016a02b16647cdf9f3844ac6d3c96b653
Date: Thu, 17 Feb 2022 03:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645068384
