Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E6E10E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 09:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655890319;
	h=To:Subject:From:Message-Id:Date;
	bh=5iRiZuXcU6Kj0Uto9jcfnFTGh0FShGfi/k2NoOGEMVY=;
	b=lNIblNpbnxRGwBjRlANTWjNQfngusMXSGObDDjcyxUwPKuhRBrkYNS6gmmyi0OEg
	sO2quI6REZ8t3QBatEp0Po/HmF5+eQWnkLZqcJ73xjP2G26RS3u5v0JicdcjesiLQJk
	c7LO0eJoq+XUHqK8w/Rqc3bEfe2zLGd38uipK8aA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655890319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5iRiZuXcU6Kj0Uto9jcfnFTGh0FShGfi/k2NoOGEMVY=;
	b=haQCJiCWfkHwcsV3c9Ss1ROFcSA07ZXQ/c88dDtL/6kcOK4ZV7ayzsQlet5yXBXo
	Fo9jTBWTttuylghUHBhI0Aj7xVuVkE0WZRefZBOC03QG3a3lXvBk7YiFmlKYhzmOVva
	WreF1vjd0/4TEtOukWvAKTiFgtP91mLRz2mBv5e8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ac117a4-300718cc-e9fb-4992-b1dc-d5ac05ca4972-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5738ddb488adc735333c770a41eb5c52d7f49ec5db883e957ab391966427d16
Date: Wed, 22 Jun 2022 09:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655890319
