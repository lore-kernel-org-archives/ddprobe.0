Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4447B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 14:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648823758;
	h=To:Subject:From:Message-Id:Date;
	bh=8Jp3RBOJBe1tS7Svi0hKq6yzEpksVqpLagHOTasFNd4=;
	b=bRCgVsmwU4w+GN9sKVa0tnzuJjbhLJazkZrj+n2kRHPGdPMwwA2Qe53CjNAun025
	1KaXg1kQeJ3teN0KSHkccpn74CQp4MVHnR0m9ojt7LbOWs5Ine8vV8NTYebayfiyfDD
	su/gb7gaPwnc1dwYDkugveyIdv8sgbIk5gBgUoJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648823758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Jp3RBOJBe1tS7Svi0hKq6yzEpksVqpLagHOTasFNd4=;
	b=b4O4+vMoXgs/Ub7O08XmVpPicpX8GKT/M9CbupWoJkjwevmwzbsIHuGze6nwFVlE
	PsI2P/prvinBg5Gn60S4afhmwfzJbsurlOqL3cBHP+q8v2/KoBMfsLkGsLu9gO3VRRe
	WfmJrBL9TtrkiZZoabrTLq3EBKcnJmeFbLXjEGu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe58dedb9-80ce6e1b-b5af-4ba9-97c5-5198943a48d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b2f750f20b3e5a231ea97a370933f7ff8bdf317ac0d57c6e6283247279dc830
Date: Fri, 1 Apr 2022 14:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648823758
