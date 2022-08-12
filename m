Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3101396
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660317652;
	h=To:Subject:From:Message-Id:Date;
	bh=4Wf5av801CywnlFSfWaTjrbS8lWQht/zamNQDLsecsg=;
	b=iRToxKUSWsjR6pYZ9H2dC317PQNN7dXIUdT8kktuGzy0Z971/VkW+jcI2P4Y7hlc
	g+7U04hBcIZjUftMnJX8YUc9h9UkeclhXZsxsa/A1oHwpge0GdRnai0WRb9vpOgn6ln
	NIhaXitdtPdDKq7utF6ZxS/KLyPxQduUiGcCbapk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660317652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Wf5av801CywnlFSfWaTjrbS8lWQht/zamNQDLsecsg=;
	b=Kj7NHssDb0Qq9KHDPVdMxXNVHYyDMNYbEEmzBMZlaeNpj+61rilYdGHX8Mh7HP3x
	RsZNH45oZmso97ppmbkWiP75iHYgEmBcaqGaU/J1NT0y8+Ta1Id3lvYx38gFqH+9MSw
	xl1Ev8c1jD7mZOdGprdbjgTSXBuy1WKHuPOvvBw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292a4d67e-ed50c12d-446c-48e3-865f-b1402b058653-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55376aac557ab4bc84061ba525e68ab3402abd050ecf45421a7d39e4a4aed52f
Date: Fri, 12 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660317652
