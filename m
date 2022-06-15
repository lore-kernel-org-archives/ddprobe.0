Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074097C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 07:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655279759;
	h=To:Subject:From:Message-Id:Date;
	bh=1gpiwd7ktlaozgodCUZAvTm8wQjNvsuYWp+GXUY/bq8=;
	b=hki9QC16S0sTtcym1WsZdBo61jllkpeT8cqTJH+mmq6QPfGadwF1GbBDWqEv6SLi
	n0rzQdBeTOWHETyK5NPA9U8Ccbc7gu81UN4HEbFO1eNMVRvqOLBNezadsdZHCOiWelk
	fKO/s7M0rpdQFOSIbcudIF/vjhVWwKxJRGgvj3qs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655279759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1gpiwd7ktlaozgodCUZAvTm8wQjNvsuYWp+GXUY/bq8=;
	b=b1HRZ1bvr+6seOPX2sDx/VPk6ggi0pqbQ2dFndwOZMEJ7+1wYaaITXrvf2VkBGhi
	ujrV+mDQsztxTRFSE/rr3gKYKnGcIc40IYOHGk2xK5FCgsrcQ/Eqt9SD6SPRgVrP8cO
	t6I7ZLQcLsRiN6BoHOtzXjL4+BLWtJs0en2CAHW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181665caf99-9a079d83-59d4-4f9f-92b1-3d2b14b5bea1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f306f8666f8e606852f91fa00dadbd5b0d7864697e781fa18b34bfecc7308625
Date: Wed, 15 Jun 2022 07:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655279759
