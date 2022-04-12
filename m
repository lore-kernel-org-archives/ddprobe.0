Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5581FBA
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 12:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649768158;
	h=To:Subject:From:Message-Id:Date;
	bh=g+hmFq8/mo2txBltJA7H+7s4jyh+7dxE9+J9ZHVvG8s=;
	b=XjHeUcj2NV0NLGOn/7mvr5ZeAAuwlPQi53djV5DUKX41CfCcqZ10xdpwB3O/gYK/
	wkUSdtR2tMFSbUluJVx2HVIP+3AIzGG+WyOBxPwlgi2en/SLW+Pi/0n9HOJq7qfFYck
	o4gfXKlsI0DViKwt1AVE2gCIrIbuHFaqYZnMab8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649768158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g+hmFq8/mo2txBltJA7H+7s4jyh+7dxE9+J9ZHVvG8s=;
	b=GChJeTcS/bk+8VdynA6oJ2L4TDdOslBbYh3ilzXLxZlKypKrziat0/1xDPnAZ7fS
	xdhJXOOh7zNAIR4gS9QBjiO+wZOLZyUqGofR0962DVHJBy4HqrrLVxTb6D8V4Mn+9mA
	ts6caLVSsR1LX0PvStP24+14DUKQO4/Ps85HyTtk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801dd853f5-cbdd257a-0e68-415e-9369-9427f67a39dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d1f365839bc35e9947b575a9f0b113a930b84a07e180068f02067eb15fa29be
Date: Tue, 12 Apr 2022 12:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649768158
