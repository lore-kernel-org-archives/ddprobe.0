Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A391844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644974484;
	h=To:Subject:From:Message-Id:Date;
	bh=dXSf4WOq3nR6EgIiIzDjZxjAXPDjYNmIQ7QLZauFrbQ=;
	b=GPlRAtbbJp9Xu3x5BpZsgx7NtecSDE6/QUbl3v5zRQ61bX0zWbxskl/Sf8tLEpOW
	LuLj0UYL5GoQ37xnBUEfVeGw4RVlNzZbUqc1VQFEcxBZX4VqFrvk7SkSULZxFDDQl8H
	iZfryYemh6eyPDr4fK8cO1LYNDul6NrllH9NS0zU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644974484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dXSf4WOq3nR6EgIiIzDjZxjAXPDjYNmIQ7QLZauFrbQ=;
	b=KQtusVYgxR5CVYMM1EtE5QAZ2rVnAeNf49OAdKM9sUmnYekjmprBl/6FElzuKd5R
	1Uq7Gc/eOGTMar08ENFue5MbDJqVF7lXbszXpapzGT2zqTimDp5CYNAL1+leztg2BzK
	XD7aFp+mlvUwQ6+AmCpV5g7sxj/CiyB/LH7SUddo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f001ead17-7ff29287-6fd9-4d13-8972-572a11e17183-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95b800121cd86a6cc90f2238262b0010ab4f9b244339bd5e24e1e97af55d0d13
Date: Wed, 16 Feb 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644974484
