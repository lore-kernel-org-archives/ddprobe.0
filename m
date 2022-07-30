Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBEE28E8
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659180652;
	h=To:Subject:From:Message-Id:Date;
	bh=cGpVFiTPmy1ovqIEtagkFRSxOOFYZVIXHVY2oEolKxA=;
	b=A9ab/7E3S/XKcPDpxke6LPqZfb/o0cOjxB1+TN2d9LWWnQsfRZkhLNEErb4nei35
	dACM8V93jE74M3W16+ZQRP/bfyoB4aPpCkF0O1PJnBXYXtX+RXg4yBvNqWgxt4FLAWx
	IZF2VLpGRxmwG55WJWn6jgcFBHOeBUe2plXkCugM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659180652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cGpVFiTPmy1ovqIEtagkFRSxOOFYZVIXHVY2oEolKxA=;
	b=G8ensf2AxQCKoz1z3ghuzeIfjq0xQpme3GDrGE6IfQELY9B6LiY7+LkR+X6L3Tbf
	1fsdR34hoP31N+Gig6Z3vQfxrXM3G+94IYHkokP5Kf1wi6MQi1SGBsA/IUtDG80kL14
	0NiFct4AuV4+JWe1xVT+fbUHA51EheavEXgRscrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824edf9862-0a333b05-002e-441f-983a-6833a49cd0f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a6939e98ba51d636c080f376704e79d8742724e0419247a607a481b35e47c50
Date: Sat, 30 Jul 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659180652
