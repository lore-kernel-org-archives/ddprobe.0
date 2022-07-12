Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C76440D
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657634213;
	h=To:Subject:From:Message-Id:Date;
	bh=WmDIhasDHMiN8Ut7ngDMzdiJBy0+iGHsQvz+2Ggzw00=;
	b=M+PECSLWyfhN/Kpl9RIC7uC9eDfh8D1NuhEHOIF4CbPSTkqERw0Z/m1sSbNYcjv7
	K9ChJe557Ga59hEfbHCxHG5K5A5D9Z36WlbRlQ6Ha3Wz6hv3NmkeaA7o8efLJGXhQkU
	EkeAqh8AS4jZEPRqB6AvHrPzd3N9jG6Ffg4cHon0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657634213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WmDIhasDHMiN8Ut7ngDMzdiJBy0+iGHsQvz+2Ggzw00=;
	b=giARrLM8x6aM7nUCBkKQj0VeoxvyuPJSz3oTUIk1Rcx0iAr6zA32sjD3e4lgEKDe
	59MjeqHlCJEood+LER7WmsVlicsOQWSfs/4+wZn4CMG25qRQwMBvP9Xs8YzXd7BVdvF
	IcvibTfbzpInGr2yWl+58uV1xK8VYtp7c9IdT4vE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f2b2c9c0-5f425b7c-3dfc-495b-84dc-d256a353a485-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a8b5466421731439aa5be24eccec3459c36ee30d2ec37b0b6ba02a8aaf8ff59
Date: Tue, 12 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657634212
