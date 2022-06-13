Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CB81842
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 16:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655136599;
	h=To:Subject:From:Message-Id:Date;
	bh=GMicdYoYUSPx+3p43y2nFrRiNhTq366YSV+YuSTY+70=;
	b=YAueUnslusSqL/3RVCuxpU3XYW4xjsoEtLcb9D77gGGRbsPJKm8E4k+OMLGNEGPb
	KkOFRsrnBYqssumNpk4u/8pn3W0Vi3H//pwB3XFjV5hoV+71cSoWLKO9iKlAYae5OVf
	h8531T5Z6klU68tX16tC+2rJGUvS+K/GydSZraq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655136599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GMicdYoYUSPx+3p43y2nFrRiNhTq366YSV+YuSTY+70=;
	b=S9uT1Eo0l6ZqKcOF/pG+SVv4ktMBnFPw0ciyagec/RSXQKcJJJLHOE6kHL30IBLk
	bE+Pi7t36TVeo3lPl8MamAh+mQeK2zlF0IDcd20TP0tlURXMFRKhoO8mEMMu2h84hpM
	Y22h76oL/sVqusp+SD9+MaksuDwYBl41JFXynVOU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815dd43ce6-cc4cf190-4cda-4aeb-8595-075326bdc14a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ed6a77b6e2a9488890be63dfcbc9e38f1b6e4f29c86a7d8660cb6a339d9aa50
Date: Mon, 13 Jun 2022 16:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655136599
