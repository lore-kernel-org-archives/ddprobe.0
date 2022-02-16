Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B07E1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644981984;
	h=To:Subject:From:Message-Id:Date;
	bh=aWScYd0oT6a8HLyL7InDGHX4PP7gYb7nhWrGAb4TAfw=;
	b=CgOHSSNUWYhyA0ugkeiEECv4zA4azMpgP3RguWzEvBvMEal9c28rJBK8ms1lreMg
	D+g2/lr+jG4z+zXIC0l9K+vvADkJJ4qFq8rlPO2eJkr7Zq2E7qppW+/q5mM9H9tenhU
	66nCgemAHA88a3egvg7me81KHs8NTtArg7ZiRHPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644981984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aWScYd0oT6a8HLyL7InDGHX4PP7gYb7nhWrGAb4TAfw=;
	b=JmrtjUCsFQf23gtPb2mXijtWaTNOGrxnmqM0YR7stA31PucY+ZPIRdqM3v/vV/ds
	Msv0p3c/wMpOGinpVOQCQryWLDwueuzaK2hgaAL7UOT/ZWzOodVU8V6FA7wK0ZolJtC
	i5Qol5RN9Fihbg3alfpXEzRqXW6w4qW+uXMqLWvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00911df3-ce4707bf-14e7-418f-b660-7889aa0b3823-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d98bff488c270791d909d575caa11a9713150c61095f7e72e5270246433732a
Date: Wed, 16 Feb 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644981984
