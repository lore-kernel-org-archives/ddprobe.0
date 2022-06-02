Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E9D814
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 12:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654174439;
	h=To:Subject:From:Message-Id:Date;
	bh=2C/tdQXZmX0+fuCzkbxPZroC5dH4wEiYRIcCCj8gWhE=;
	b=eRAcEvR1qmSF6ZJ8XBTbNVQtvaz6mqG0Nh9hIgK1Hj9dgvndMSN3GQYzCauzto7Z
	T6mVJO6Xbm9PGYtXb9cVSaUCbXTn6ZctAhFCKovyWZ2J7Z58lohoTYmfYq2xTb9adeS
	1jCg4T3jEsCnM3mN852crHcVjiVsClcjOs/N1TbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654174439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2C/tdQXZmX0+fuCzkbxPZroC5dH4wEiYRIcCCj8gWhE=;
	b=gN6e4CCDm3MOXwJq/lSsJctjpMZayEchMPqZOwe2QeAo/gd/Lwt40sJHGF3Z9AC4
	+4fNuLzVTZSRM+P6Li+aKSIr7W9uKI7u/73yHzOscax70DZmI0y2U2xRXVVHXLGYUgR
	KS2XspPkg6tRJGTZTb6AlNApAd5VmNcXBDHEJA/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181247ad76c-5245c42e-3dd7-4512-97de-17d4a0767e13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be10a13296f86a907bde41a1366fb01e56594fda69281b13aec69a0e13764cda
Date: Thu, 2 Jun 2022 12:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654174439
