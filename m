Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7908B7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656955012;
	h=To:Subject:From:Message-Id:Date;
	bh=oB575qGMEtdn/bCi3HyprojXamKbffuOLRuiVI3dbVc=;
	b=kRRtrEehT0Tfyz9kbYiIdzApCla6opeMcQOQbQOzC4jcsdp6grRUUxLOO/V/pZmF
	WOALYwBM34yM9LbyHYoxJ2W078dqlc/wzNkx/4VvFTpdq/7PRBgydRczj4qYnBG4wVc
	OmShnxjldlV5EvkCI1dlPlBKPlwNLC83aTEVif0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656955012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oB575qGMEtdn/bCi3HyprojXamKbffuOLRuiVI3dbVc=;
	b=I88/IincWtRXrjaVzZEBo5L0Y7J7V0Z5XPOck/26LWtcyiF1WKFglvgIHPxWE7K1
	uIBVZ0Obbs+1Ixp+EyZUeaAeiLSc8Kg63LkfzNFelpBJl7QqRfNIsQTAdcB7gyMrAko
	pBfk4lvO6Uz4rhQgEXm7D6D9VNslpixAFymG455A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca3704bb-5f4a4188-1a72-45cc-8fbd-36dcef13ecb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a7bd28acffa9d0ed1b44caad4b870a09562aba6b2549d4477858b728c70249f
Date: Mon, 4 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656955012
