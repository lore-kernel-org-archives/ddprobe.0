Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7595A184
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660100452;
	h=To:Subject:From:Message-Id:Date;
	bh=Vsy1qbr9SSn6rBJ6gL+WXieGgQPvHHYyfQYS+kkJCmA=;
	b=eD1FQC2Y6KqViV0KrpI93uDOPKnJlF+jCk/EQJKdc/ah4MZnOQYeRjDSBCZvtYVS
	csUpXpYULGLtKmTx9slgOxWxXP/DpZ9Zm3gTmavc1OCbbaI1pMhI0Yb22yJ0FZMFidW
	Sj0wtxB0lyLJDwlEuFtYxIpu0RqdHWJY55HC0zHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660100452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vsy1qbr9SSn6rBJ6gL+WXieGgQPvHHYyfQYS+kkJCmA=;
	b=QvbkJ2g/Op9osVVIs/wbO9DauRpl7XTGKFzuEXMjwf/+QfstolT1Vb1+dd7i9N6s
	zpFihAChJQbmAfUNRudHem1aGsR52hV6DOIU1LX3Uk7u1uCyLymLzudbAJrQCBEM8z/
	g+iDSOPaXiRYx/UGylJGOcw/FkM9igt6oHOMENuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018285b2a0d9-43aa96e8-1a17-4732-83f9-277d5e276d96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46329a9ee3411b5a97f41f03692473d57c225bad02e8f38d77200cb7675b3ac3
Date: Wed, 10 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660100452
