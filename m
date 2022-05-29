Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF48D17D4
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 10:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653821039;
	h=To:Subject:From:Message-Id:Date;
	bh=dPwKmKG7kQJtm7ciB8Wo5RRHE49OgGr8/1MMcEGX1v0=;
	b=LkORgqB59e58xVZJ2Ccvub/tlnOSqWbMQfOFWF3eIxuD3VPBvloAzN4O8rnszoiT
	jz5Gi0+T9JE6/vhjtRrmE0zo2H6VdN6x3FtJgf/2lWFRp1fFjlytmrH3PRPkYhjrUOe
	I+hSeNqRyrLWfIE/ceu6SoI4i5OPkQ72n533UzPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653821039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dPwKmKG7kQJtm7ciB8Wo5RRHE49OgGr8/1MMcEGX1v0=;
	b=KYnLveiztr8eo7J0I7GKVzEvgcrPjgMdAbAxc06B4s++ikHGrnS4OwJ9RtZEWeTr
	TYT+94ZLKduurt8xy84IlJuzeVNZNSKsB5za0gFKzEDlfkFUUWrR57U+hXIqQ1/LENZ
	OKVnZ06aN4aKjBsErCZhsOGcR4RP99F2+zz18zQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f6a628b-3de0c9af-ad3b-411a-926c-b3446d067964-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 440a9f45495193521bf06e0161816fc8b1dbf6bc910010d849b090e45c2ae6ca
Date: Sun, 29 May 2022 10:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653821039
