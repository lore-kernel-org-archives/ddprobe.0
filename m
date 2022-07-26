Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCD67A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658794612;
	h=To:Subject:From:Message-Id:Date;
	bh=MW63DfBw++KP3ZLAD/P1P4EaVUP+aPQcoVzPUZyP89I=;
	b=hXfKvCP50us/1Q/BAi+JqEBzhex/uedgZgrjMxke1Ci5zPoMQoTyBmN26+94yE9N
	xvZnO98T16noV7RIb62GzfMGIWrIf3Jo8qI7APkuGN9z4dgZgKSFOvfesbtmrfkvySW
	dI7yzbGARJQERxRylr88pocycIHLaf4Ru4G5fweY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658794612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MW63DfBw++KP3ZLAD/P1P4EaVUP+aPQcoVzPUZyP89I=;
	b=MZtcFaZwrDx69sF1D+MnvbC+ONyPco6w1GidIMUwNBnIDH+hTgL3qvklV9oyKVXW
	UobKc8z6vGRZL5pO4lePsS7feWjLefS2mqOs149VZ2oQ0idmU7qgFBlLKvBSGS3grij
	eRe2hIUvZlys0fbBM7YikxTgU+Gyi0v50BqU83NQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018237dd161c-b76c5551-c2fd-4c3f-8bde-5fc8ccd4a89f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5a87dc7ec419382f6e5fc58f8c9985dfdc0cc4dac9e219a8290c15ce0b4701a
Date: Tue, 26 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658794612
