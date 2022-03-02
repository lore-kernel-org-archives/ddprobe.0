Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D616136
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646259385;
	h=To:Subject:From:Message-Id:Date;
	bh=kyJ2pT4KPd545rGQPiQBh2WHAP5m6090DNI9Ihhv/50=;
	b=LvWzh9no+Cy+qkBZC78EavzmPmkvopG76sMEL+wOo81vBhcXW3bc8rNZAzbAayXh
	AuPXUljsE6xWkKojKpmHfCL5AJKbS/idz0WuP7zga00KUTKdELFlt6zy3JC1Qs/9raD
	wuF3HvHuJKPRnsvUivBMzHZbDqyPHv2y1f/hyoxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646259385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kyJ2pT4KPd545rGQPiQBh2WHAP5m6090DNI9Ihhv/50=;
	b=M2b3y4SfVy1X5PO9u8mt1sQSGNSYIleoK5/ybh4JpVR/ZKvQb7F7TPdAPvuqGC0E
	BtH5OYYyj/IGAcZEDwMTdGDxhJ6qgeQES7FZaFKFPtweDKFzRjKv1RvsRTiWy4KgnZL
	mtD4fBf+hVP6y462TdTXK3joXtVUdIDDdD8hO3iM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4cb4b1f7-80055712-f8e7-46eb-87a7-4512fd8f9d0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8927f4e23ddba164a4a19504838302894a9b63f032a8113f7859299313770b2b
Date: Wed, 2 Mar 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646259384
