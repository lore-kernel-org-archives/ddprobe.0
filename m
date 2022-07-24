Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7CD2F4B
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658706412;
	h=To:Subject:From:Message-Id:Date;
	bh=ktioapqwk9KffttT68FGcHkxRIdcdacBiEm1Zmr4EGY=;
	b=TD+A7TkvYzNwUYIpEULxWBE7Hstp8TeUcYAGxBASDyKcJK65uK+f+v8qbPjmPVNu
	0hCM1Ym672vcQpkJaf+l9Kxk2PUq/Cxjl45HnvtG0qaeCQWqch1imr5pg7Low9dWs4x
	v+u76QgJmGvrmuZdgq5IpZSFoBIzqB3VfaHml+70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658706412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ktioapqwk9KffttT68FGcHkxRIdcdacBiEm1Zmr4EGY=;
	b=YHVykCzlP0ZbYJjHoVKociOaLzKmnItmFQhyvsuTsLnu+g57u/iOFb2yN6B5M5Mo
	1F0F0x45QnNfO79sxXmw+XMLqoshsch1cKAhlXnVOt/ypzBow/9r5vTpFZk/k/L2xVk
	7n4h1U9RQJuqNa98vik8nnLDgSSaxJ36ASpjWTKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182329b42fd-44d4ee16-a862-41ae-bd70-1598533833bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce45092b2bf120e6eb64b86e002fd541b1c6a01a15cf3936a59fd9652f1d0647
Date: Sun, 24 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658706412
