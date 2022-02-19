Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A6C55A7
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645297885;
	h=To:Subject:From:Message-Id:Date;
	bh=UF3e4u7+kgJzsRWjfQXV7f73ZMJ23Yz2W5Of57BGVzM=;
	b=BkGLBk7Js4nViihfL1XmZEBmKgo9Luqe2XNQ9Pl69H/Zhb0/GWhtB9AClP5Eh+Nm
	+s8TErJhoeMsQkzBi4foRnzziZM6zoYAuU2khE0tlW36QMQK4lVt8h+aVtCXt70CjXr
	U/X7c2pFb8d46kx1T4PfZIc1ZyoxiDHOxOIhnHsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645297885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UF3e4u7+kgJzsRWjfQXV7f73ZMJ23Yz2W5Of57BGVzM=;
	b=FTdgHSRlk4yufjnpWx7Ig3vlfPdNrDPPK64vSjk0l2wQuZEsFt241bv3ELncw3rM
	QaXGfQ4JtQ75M+ouU13KX5sbrlyTr1pSi9C2ISMVUJgZioiWQbHDNqGGsIqv8mmk21a
	hZns+47hFxzUmLtsg1Pg6WCIHPFJKcFnbWWn3rpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13655e91-d9b72006-06ac-4f23-af71-f7be96abeb5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 267e5cb6a9a52544fdae30a7eaeb89015d33ee75a8c5a7823265af948cad97c4
Date: Sat, 19 Feb 2022 19:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645297884
