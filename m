Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713485EBF
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645383385;
	h=To:Subject:From:Message-Id:Date;
	bh=WmLYQvzggDGuGy/LphGsFCWe4dY+hM/BZMtp5RE8TLk=;
	b=R8g4MvQaadMgxEy7tH+p6jtZ1cOukCQKDkHRr5I/0s2DSCbJcf1QFq2ppAZKfoFB
	MdHQO25c0RWn4XNZImcS1jXeRTJ0zktDHl+XvfuaJyWyVN614Ai0BVS6waI4eyTBcB1
	xEUtq4T35e1Dt5WaN6A0BFGJa28GathpLIpQSJwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645383385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WmLYQvzggDGuGy/LphGsFCWe4dY+hM/BZMtp5RE8TLk=;
	b=B4PKbevKbca4KyG2IZ52Sh2BSk65dp4DzqqAQ6Df+pcZFNBUgjntmIjE27J4BAFU
	U9bEjVODn/jrHiXlpsCOBBzaGC/Y0PnxwtLWRiKykqmZQdVGM490IndvTot250sxDf4
	al4iTYcECGQaCXQYbxtDTS4j2ZkfMAZK+UzaxWJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f187dfebf-09b4f884-f7de-46ce-b7f2-f09bd51d7933-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67db8041856efbbaa88763da4e9cd77abcdc981c2bdf4114bf93190941c14b10
Date: Sun, 20 Feb 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645383384
