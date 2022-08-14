Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9059257C
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660507253;
	h=To:Subject:From:Message-Id:Date;
	bh=SxDLhzFJwhXfROSOeiz70FkJeQ7pknU1z9qRgt01JBo=;
	b=FAnG8ERbWoyBIWJDXMUi5exGAmOFesmKpcM4WWfmEDkBS45WhhPrS7PX6P+AvgH5
	ReGOVkwwrVOs2Ae/MvMeZPlvTXlCfSv1pVgHfhqhhD8CwX6oP/Ia4dMUGuoOFj2AGIS
	/0phBm94AqKKFEWT8YClxf9yt+OG/HCiRzSK7l4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660507253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SxDLhzFJwhXfROSOeiz70FkJeQ7pknU1z9qRgt01JBo=;
	b=ZKcDkmHJspexizmPwu0dTmctcRis68sHUufHtRjg+8bN2PsCU0pqk7vgoq+MduhM
	ScEU4aJqi6dWy5JVAI3K0su9Dz97+mFTFYkTIC8KCES3eBsu1aCMqZSyzqHARqtivuN
	ylZQJdhiqTxakzHh0d0b8bWjBYZbMboTHMmkzm6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829df1e739-82526875-989c-4862-9e80-d0e9633e6088-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37e4177c92f11d62069ab95ceca67c239759402183b52c9cea5e93e76ad41c90
Date: Sun, 14 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660507252
