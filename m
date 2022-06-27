Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEAD17CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 00:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656290812;
	h=To:Subject:From:Message-Id:Date;
	bh=FzA2JI8UQkQge6SZwOAYTrLiX6gXrDEZAZdHJDvthZA=;
	b=lOTgA0n8V4Uz/BqJITJ6//lRNgX16pFicc02VLIhuF0lkk0603Rm/71rF8WPm+Vi
	UqEnySJdvLjxM/ib2HEzjExa3DESHhstlD+T+tzoXIFWRZYqAovBoMy9aVoE7TkHcPl
	qjHUrUZtUl3TW6NMX2MapRutl1oLaxqtTT24PpFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656290812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FzA2JI8UQkQge6SZwOAYTrLiX6gXrDEZAZdHJDvthZA=;
	b=hm1gcIizNRZbwOq5QnRl/ZnAFBwPqu+CQzBcm4NqlVywaFEZ0X6u9hywiJhV2vrM
	X+Lbaf3dxHqDexLKS9zVlyUTpz+Ebks6L68B4Rzj8JKv8PD2iakidRr1ZXRNRRo7nWf
	I6DvCTbj1bz/ptppNUO+T4XJV1JzjpNX8HCCdhvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2a0217d-55398fef-accd-439d-a69a-ccca48a92dc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae4973d179adb38ae46119d7fd7cfe4f70c935a3d34507720f72eef4fe231f5a
Date: Mon, 27 Jun 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656290812
