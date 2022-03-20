Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F2B2572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647764485;
	h=To:Subject:From:Message-Id:Date;
	bh=DJDEnGz+oSAYgNLBBoMpnovSbbQudN5snxM9Uy8x2a8=;
	b=OM7wd7i73D3vy2iL31tRbItviJftlWOnksl2Ie07qIFQCou07/F3xzxyjjh7FGSP
	4drEr/K6JKXuV0N98WK7YraoyEGqgvMCut4/kacBs5i2QcjutGwD+fsLa3VD5F2Uvff
	eITIZaiAmas1PZsbfEXmsct80+/lz0Ow0nN2WzFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647764485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DJDEnGz+oSAYgNLBBoMpnovSbbQudN5snxM9Uy8x2a8=;
	b=f8Oc3u2wpaEzaXm9WrbXXcQcXgIHlXJeMlKQQwgHsPYGhlUjjQhdP4kBXVOmxeuv
	SEi+6e2qQg+P0ZxJ0+snrmCJ/zJaiCm4el+rT5lE8Lfwz8ofoZSixHqRKD+zXDa0Irr
	hjV9N6wKLp17VDsnCGRlEpVWyBnHM9ZEV/yGqOYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa66ab2bb-8f65f8cc-88a2-4a03-a8f3-d13e43100d80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a8f209ea0e1eeb9697b55504bfe885801586cb4da678a60eeb36e64379a9da9
Date: Sun, 20 Mar 2022 08:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647764484
