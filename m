Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCEC28E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658485612;
	h=To:Subject:From:Message-Id:Date;
	bh=unYiQ3A7ua42V/ubRYty2zmBdlvzhLV0g2tH6Ab3Bxc=;
	b=GVmOtc+50oJjlVekBXivDpr2/aagxeIh57adZPcKF+xDYWyWEAWIvFjyCDVhgx7d
	xknBIP6RHtFhRkIYjynI0iYM1Al5bmMD8kYKdIkDIgb0NC6pgndnh4YJ09gwglYCnot
	noVL0ujiHWzOHU8TAJ4DEMuRxJeJYjJoA9wJ6ySg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658485612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=unYiQ3A7ua42V/ubRYty2zmBdlvzhLV0g2tH6Ab3Bxc=;
	b=bTM45OOzYowM6KluTvC+qAavIwhuVYcteCue+RAVWopt8Cpb/Nqt3grHPq+ryjwM
	595HEWkt4XtQZXFSvWoMVj63tCitnJdCOPQgqrADk+ef1s1UM2gNM2JhZQ+VmHD12K5
	4U2ooTIvUVXn7mIvFDnzNTQ+60j65pcm9Vx5fhUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018225721eee-ebd522b6-a342-4a7d-8334-db77d185c053-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 072fef1372bdf402b3c98b14f67364ebe3b4ba27f5823716b713e81dd4fff43c
Date: Fri, 22 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658485612
