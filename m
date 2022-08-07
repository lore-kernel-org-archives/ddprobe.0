Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387F11C20
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659849652;
	h=To:Subject:From:Message-Id:Date;
	bh=Nn3/OoNCTBtgLMK0iWT8n+y+BTyT1rVKsVSsLaU50aI=;
	b=DW/I2rjjyxrJhQhSB0gVDDR2Dw8vd/6FmMKKpGP2zvSM10KzozAG373Xm0NpWfFh
	uvtkKTm+3OGyFaZBzj90zr31EbflPW6NE9/iJwt3bchaZtHWlOYOTO9k+sW44l4zDuv
	uf3OMW4XnKUo9m7anlHL6a7JLnB+wVvy+cAH5Xws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659849652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nn3/OoNCTBtgLMK0iWT8n+y+BTyT1rVKsVSsLaU50aI=;
	b=eZGzUl3ZObkMsDMTdkcvhPjcJFr9qJwtFAITAjbC3l89MqTXAE30V5O8RuMVNSCe
	Z8imM5Sw7B1/sVcww0bjctI/AJMJKCyh+o/GWzqq+o5ZM0S3O8o/nDJPSTpwCF/2JpK
	IRyZXmFx6oPOiScrWRliYSDKq3SJ8MhFUKy4YpeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018276bfb943-8032bd37-0ab0-4c13-8e45-9c17d6ab6f70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ba6db7abda70d0e879153d2d13d5ec38902d7fe980479b94d746fbb14c7eea6
Date: Sun, 7 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659849652
