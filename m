Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A385C75
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 14:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647958585;
	h=To:Subject:From:Message-Id:Date;
	bh=XbRxerIQS4wEcqpptKF7PJu0X7p1gzQ66Vyh4XD0cyo=;
	b=Nq3ZVb9usV0EizoO53TLGK5bPbbQ5uP52sQ4LZJYpHlEFA6IItPdcK2bEULg5Nbs
	MTVCX9kbDC3KSoW1rTzU/a99/n7T9nKdkfxV3yBx2YRl9xLvB7HgCU7VZg9/cVedIB5
	FhJ0EQz6p1Z9isZqThglmKXF8KgMv1xM7QcBh5Uk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647958585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XbRxerIQS4wEcqpptKF7PJu0X7p1gzQ66Vyh4XD0cyo=;
	b=C2D+1mKikyLB1Mc6WSOcWmVidfdH+u91Gma+UxjHsYT6sTM4JF+TKwFlrDfR12hs
	30VRR9TwTgcXYRLxqqIrmSd1+4IUdJCbxLC+uK1gkElrDQuOscRRKWt/nmgUvmzSVRi
	vBW3OfvOsuxovpzRoFqzXnzulSfyWnTorV3tCYrk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1fc6d9a-2d1ef563-7963-488a-9c48-eecebd805d6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 461969eabf54052d2df4ca2b2001c613ecef859d9b18fa62b96fcd401672b349
Date: Tue, 22 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647958584
