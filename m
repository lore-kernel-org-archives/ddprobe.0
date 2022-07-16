Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0B27A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657982812;
	h=To:Subject:From:Message-Id:Date;
	bh=Dd/yzqA7E4tiK+wCqxmXid+HdWtQIVSyLINOjoCXpkA=;
	b=JvC1L1+DjVB/ef9sZ1cYIT5vNvpN8tMTfjx3IgVgTocRxV3uLs36NlAfOWAbkQ3L
	gfXWWNQsH1vzmpLYCmiV7p41Sb7DWyDrb1V8pgq/OXECo0BDFxbbn3MLZZ8Pc+OeomU
	czguQvsId7P5xmEcQVpmVdpClQyVSK0Q+tK2i/OY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657982812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dd/yzqA7E4tiK+wCqxmXid+HdWtQIVSyLINOjoCXpkA=;
	b=fo7Xm/Go2vBayASad8qOt8jgnqdu02VsN4MNbfU7sViPo0zKdoMgvijJXioc9nkr
	6n2MqEsNw2WwWpGpaysPDuywWcsmQsRyUg416VlC+NwybBY2GQ+i7X6K8KfM4iHcKwc
	GNkhPexY6RqlKFIU5yXR7LLouKJtAAkUuM2JK9t4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182077a00a1-3041b255-336e-40bf-b8bc-1fcb84a67d34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4a4ef99941c8590fb6d398fdbe8c9784277b4e34f7acd30cb10ce415881325d
Date: Sat, 16 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657982812
