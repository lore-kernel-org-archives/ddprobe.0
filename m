Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1DE33CC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658168212;
	h=To:Subject:From:Message-Id:Date;
	bh=Ay05Ip0m94i4FuyOmHcp1kguDVZP2oqZlOFP40BuJUI=;
	b=iNRI4kbHqYaODKfh6tYEZlDSk5k/HvlAr78jFyIFM+8wAmJui3puuamEGhYUFRqB
	mUtUcBQ5fL6ynrlYtLsYlx236dttpAWnhdyRN41gP7w9WoUVxlNmjkfMGzR288YZC0T
	ZmiYPWFCG3IIpBLuNrEgrWRxEq7GPkHkFKOj2954=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658168212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ay05Ip0m94i4FuyOmHcp1kguDVZP2oqZlOFP40BuJUI=;
	b=TbLGRLoQCXcEsowT4+u6nxHNDEMekRZTwuACWiw2CU5XxPjc3sva16s6t8xvHKk3
	2g6ix48MV6TL22CYltsjcUlF+mqwyJNzyg68XUkCKvrvtSeMA8sqqKiZsyfcrbshYkI
	8fjDZ9O/X7aS01ICK5ntuEQhNH+SZUiNVhx1VSBw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821286fb84-ba7725c7-5c15-4b68-8bd6-23b353d99dda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89a0f8a9ca2f26cb1e3c161e28528773056c8943c9607c67ae5f7ea8ab59f33e
Date: Mon, 18 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658168212
