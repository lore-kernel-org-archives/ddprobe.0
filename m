Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602A41B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645005684;
	h=To:Subject:From:Message-Id:Date;
	bh=LFblY9EJwGncDaNMB/SCqKNjEb6fXoGB7akhM0JeM/8=;
	b=biN4wZQ6/F8XS94crw79L5VRCb0gKmbkqg4snL5LdA1X24AA1o0qMjPWVib+ZMYR
	USUY/c2OGYF7ysbu5UbtxyFAu+hVn+wva9T+IcVCf1Ot8oIG3A+Wn89hXd+LA2t3laX
	rLBT1vAOJhRWrYkPqpxmCAT1WgqGbQNXlZlYJ+G8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645005684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LFblY9EJwGncDaNMB/SCqKNjEb6fXoGB7akhM0JeM/8=;
	b=VwL0rw9NoQUdZPxDMjzcSj6X1JLx8y/xXarFc5ydAro4C6IPn4oncMoITWJPoHLt
	GTmgCPBU9yTkDg/AlMoIloP+d7jqQ2A1NwMCGEq0kbnSVcRef2o+QRYuNTRkaVrAnDR
	UGB5eS6WwbCxGpmSosfXmLCKQ+CvKsZ+iCaveVCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01fac03d-b42ec9b5-2689-4c0b-88ca-8a2c820d44f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54f2d9968f8a5f3b4bb0734d0b7e62ca5484af15d46544e087580ba186450201
Date: Wed, 16 Feb 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645005684
