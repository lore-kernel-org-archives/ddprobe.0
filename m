Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAC77E0
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657259212;
	h=To:Subject:From:Message-Id:Date;
	bh=wmRFdeowBurmukDDyNEs6OY5RHpdb7V3v388P1Yp2NM=;
	b=bNPzlwHKvAzZQxMaireTbnKQpnQ+1Bo8Z5SPnnErIvxGM4V518CVP9gz9v2TniWr
	GS5lzB7QSHI+fcDGtZD9N7zBd0dAlQfWK4pIecDVF9HI+4xpwnVGwldoceFqzUGDoP5
	R7+lQJJYHTq905mAn8r/XwKEE+ZyBoG2h5m+YdeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657259212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wmRFdeowBurmukDDyNEs6OY5RHpdb7V3v388P1Yp2NM=;
	b=NoTRPaiBQf0Q55bYUd8+d21VJtA2BHtkuDNNCNYE/AHE3LRyZuxeGXoE9fMaWUgy
	Vm44seQoav7pHalNr4zoYuNvmelI4jEaxpYJMz3FMq9GFz9kiD5/5U/FGTtfPH9GWjK
	WmmvHeV7nCxrhhxSxf4FzaqBtZDusFlUr+aoaySs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc58be15-f39b908a-f0c5-4c15-ac25-bb1559fb3121-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c7bd9e9bbbc7176014a7fd95a111d98df8e55f445c8de95bb2e6dab597f97a6
Date: Fri, 8 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657259212
