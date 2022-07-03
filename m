Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FFF441A
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 04:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656823612;
	h=To:Subject:From:Message-Id:Date;
	bh=ddQ0tv5v/iaCATy4T+L3pIPgxCaOH2UR97LDJA1N4mM=;
	b=Vs7e1O8ACf1B7aDeG8XwaI18jclxSYQWvKdww7bA4HrIqf4de8Jct1qe3SXBPSFx
	H+roG/vJPcajdgun1h74PxlaRCiepd3DXNFkggCZc5tXT+KQslgfAo18Kzt/o3pnsr9
	gufBh3ez1dUHT/yA9hNThhtI/avWlcgpjGD14YcY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656823612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ddQ0tv5v/iaCATy4T+L3pIPgxCaOH2UR97LDJA1N4mM=;
	b=JUaS2gMWnbpB1IgDEYZRGpFGpTUbKi12VRCTUHZLEsis/rFDip4ufGIRlXxRkzE8
	Q+TE6e3ziW3qH/5H6cSsvNOvO+WPfszVdYpsaQCRYwYZh6aCT1hLf3+yF03qibpxh4/
	y1GWL9nZ6yyl2yHhTeN4qEuBdZKSRlbp4OpMavLw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c26203a1-58ac81ac-8bb8-4257-b9bd-3fa9f15422c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 559f8cdc65d39cae71f18811e0ca258371e0375b2dcbebec16490b549339340e
Date: Sun, 3 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656823612
