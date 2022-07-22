Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1B95C85
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 22:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658530012;
	h=To:Subject:From:Message-Id:Date;
	bh=wVYfXxsovJomtsS4KinBQigBxI6RNcZkIpC6UfEZWFU=;
	b=jWvLI4E9Ln3yugYzgZXd5ewBm8sH3Ff+GBkkCPO3xt7j5MhdJX5UajU1xAbiS5b2
	Xk7dzCuhnU/kcrAU5y5ERxQvMP1mvFfxsHqKyEFECC6IGkvoYWnI19zWhwas2p7wpFV
	jLpMgI7A/ElaB7quFpwybUDMolsbXuhyDVExum80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658530012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wVYfXxsovJomtsS4KinBQigBxI6RNcZkIpC6UfEZWFU=;
	b=EQfYAz8PqSC4B7yfrWAVV2DqLvlo2VKcXTcAorGEH5Ooq4Jy5EqbVa5q8iw3Lp4Y
	S7gL/XfE3vCrJyIiEAqeBgcOZ0dzrSTH1KtNid8MYNr3iBqwj7ZIdFf3j8JDP6Pt5tm
	GHt7RUpzJIG94v5zCt5GPhZdO3HnqG/SZmUdcAxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228179c90-7da29103-2543-4b9c-a850-11f391384c88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 860b9d2faadc7ce576e4e49162910a13e6ec2036574bf72d9d4e194d7bbd4df2
Date: Fri, 22 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658530012
