Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D41457D1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645313484;
	h=To:Subject:From:Message-Id:Date;
	bh=kHB/PN0iO2LP4q9+SXMCf5ALcvLjRid4D7/wQzxSFDk=;
	b=dv6gIbpTgO03zqQszR9C91bxK2OmqJ+2EDDaI2XyHBuUtaPsPfatb71mwtH3Yr2h
	/YOoVYm8LR8K3b6SBLEAQrZfO/uDqJb73XZ3tM9AVyBrAHVWYXdVfM58QGeOEV+0/EB
	qcD2SMIt5cK3hTl60HEEhJfBUEJTn9zUaZZrdS8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645313484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kHB/PN0iO2LP4q9+SXMCf5ALcvLjRid4D7/wQzxSFDk=;
	b=FrY83tuUcHc1Ii4JFSAiYLptHVtlu1fYPhleSg1sfEeApudmInrDCrNDDxMCSzDL
	Ge7DHWNDePnGDB2gkmcRj6TCJjlPMsMZQpXu2T5aY2j7VpYPlSGxT1c3E3AjRsrQpr9
	wsbv7h6KiAlauO05yiMhMo/1ccjkySZwwQviVrp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f145367c4-b5310f6a-367f-4523-88b8-5b85b0a28b23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 608aa9ebc0871620e268040af487375c5607ffe3aeb075065ba51d045dbf9511
Date: Sat, 19 Feb 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645313484
