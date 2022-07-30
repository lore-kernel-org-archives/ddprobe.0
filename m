Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEDE1FAA
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659170452;
	h=To:Subject:From:Message-Id:Date;
	bh=B/ZhGKVvQarym2Je90PmgCivkmep7iE+mxMyPVDsujM=;
	b=T1uoomLdLvKuzf2KjVKWwZKqMb50lUncAbhPcDdBN/coulwT4brAu4KLiY44Jvgk
	h9EeITqzn5RLYLga3wSwT1p5vK2do2rBZd4xG9Fj0Gw4VL8vKmT39Qnc74c1awSabOe
	suuaFnkabQTx0Z4zVMgIlDk4ehrhacVA8eMYK7Go=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659170452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B/ZhGKVvQarym2Je90PmgCivkmep7iE+mxMyPVDsujM=;
	b=Br16VYTB8c/LbT+8IOtwD90vDI4TWZwt0OOIWbHfR6ZTwZlCCTcm9OVvpby25ltS
	rirS7qljkpB4dDs27N7Mc6p03n0oHL3D1NFuCr4qXb74SXbWCWRBiwQjMeZFG3RsodW
	reII6fOjAP0ja+y4IieuTvVobMdd4w3jSctL6XOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e43f477-07b0c9b9-3185-40ec-8aba-233ad252d0d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f4af231c7eb93ddf08790ab061b8deff560b69283cd9e04966be1aaba2f39f5
Date: Sat, 30 Jul 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659170452
