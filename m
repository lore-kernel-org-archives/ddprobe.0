Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4D87A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659034253;
	h=To:Subject:From:Message-Id:Date;
	bh=94/ZKgmUZVhrwOfAFYlueHn+nOXZdVLpWaZiD3utBuI=;
	b=PVYBb4E7KG6vGpsDAwvREzwiI+uqvQ9jgOgCPHlk1y0Xc7g01s9ZIpO6WQUuGAUJ
	I/EdoIpGJz4DERnesRJTTNbJUqPDQyHuIBl/ap95RzvkgpZvoa2N6lyyBYws+87x3wi
	rql1DDLRV1ZYsxja0Pp0Ztui2jRmASdRVEJI2a2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659034253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=94/ZKgmUZVhrwOfAFYlueHn+nOXZdVLpWaZiD3utBuI=;
	b=b3M4jugpD1gMOzNBAIne39wU6lbgZaartyAgOiAPYwIKQboWszkoPXom1QKBbAOP
	qrE1KcBTXVAXdv4BskIaWLZuu4iDKS1SZ7xKrzmxJTlqYVbsHW/joznFVU0xeseLvzJ
	ZHUD36AXaHp5SZTmV5lXJAEdEc9m0TtpioeB3LWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824625b52e-6a439ed6-78f3-43fb-968a-dfbfc5820d49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 910a8fa9c82a27363731c8186f4538ae225ba94a3eff62d81af437131bf460c4
Date: Thu, 28 Jul 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659034252
