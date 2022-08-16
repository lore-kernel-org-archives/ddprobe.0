Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183B32F26
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660641052;
	h=To:Subject:From:Message-Id:Date;
	bh=ns3dhO2lwz0iZuNW4PJUCt3zvwA/u65bJ/Fwci6lDcQ=;
	b=PVE9smYqy94BtWT+QFxfKubn3GtjOaW6Vk9uX3tkMRJ5of9+mBkOOpY7GlF3R6Oq
	yx5MwL4Zrxu++QePPsZ0N6spHOAYKnWURmeOgBpmOgmy6CAUwS4Yb3KreZH1F4mJmeo
	m0YCh7C+Vy8cnT13P9uLnk8x4/OGjI9UFTvUo6LE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660641052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ns3dhO2lwz0iZuNW4PJUCt3zvwA/u65bJ/Fwci6lDcQ=;
	b=drHPVYlqZEVLL3qGeA5Pth1xoJy7Le1wrg05dUh2SIE3Pnwc5rwLJXlSRYzkAOUE
	E4yo7o+iQCB/PqqkhVUHB8k+f8rzZbC3orA8oKu1+2Yz8J5NBSjcJScTdgHv7Tazesf
	iX3XH3gCaIJg5zDmByKFHktMlTdYzpCbQmJTJ12I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5eb87ae-28ca2cf5-0ccd-425b-a6d3-6175791021d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad4212614e07a02625233cf47cc3779706d850df4d505d73d90bc10f5c8b3ecf
Date: Tue, 16 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660641052
