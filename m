Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB757A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 15:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655219339;
	h=To:Subject:From:Message-Id:Date;
	bh=6ewtA1PfEhAt8o2yvdpHHyDTjwDWl8/XMmB5Gc7e+20=;
	b=FMThpLGSGNhrsoNp9NuZYKJ28s+AgxkuBl/oWI+ihnZ0eu1mUVH9E7BdCpn94/iL
	M1HWr8cLUUKb4C5c2z6EI/3Pc/L0CcAHfnYwtSDTGr6ck5PNjRDqRbc6QOkcrJRourG
	1IoKE4OW435hCTR907o3LatidAUvo1W2LlogiDGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655219339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ewtA1PfEhAt8o2yvdpHHyDTjwDWl8/XMmB5Gc7e+20=;
	b=R0l62qzPTYuKtZbd6TQFRs5d31Myb1KtnsfVyEIpuXpFW5gqWorOKsQvX+jgAjZX
	gDf37+qRxe1z3uSBBv1h5Bs6tYKdedk6X1pvFzIJLlxDd9AcXN2N0f7SFrK+ZRXzpo1
	7S+fRCo0m6cc6HT48cLbpFY5G7IqEqJZhUKSuWZs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162c2bfdd-5302038c-f5e6-46d4-b89a-4037fd76221c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67e52df3bb76195281ad4b7e702fdf97064f16ddfbd4554e8646c9bb6dec0e19
Date: Tue, 14 Jun 2022 15:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655219339
