Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642A27A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645713084;
	h=To:Subject:From:Message-Id:Date;
	bh=I+yBHwSZqBKbu/q2mmA3GdwqPzEMlsW99hGQgmTrrRA=;
	b=QlAfChoEU4VBHpa6fNS+p5QLeOtCsetvs9iXGqPU0T8iNgjbLBFopxz9iRDIeUaG
	1eIM1Hj34K1O+fh9awZa42NxfOe47zZKNif6p6AC+LncrpNTjpO4k2A9oa9J6GtIA0U
	t2iG1sjm6qJFP3esmp+lK0om3moPdEneTI+9LcTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645713084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I+yBHwSZqBKbu/q2mmA3GdwqPzEMlsW99hGQgmTrrRA=;
	b=ThsSAu1d8XXDG5Z+X/MKVyeU/WVeOVL4+wu3zaQ3iSwrJ8LZzACwYGBb+ciyjBJ+
	8NuIxi8zd7tyslXacrL0Q4U79QzSPMqqNXPsvlr8NzohfB5SkAJbZLO3qy8BbmO0piZ
	eesX2sZJUtbPbI4vJxIelz615/pccOJb+ONoFzgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c24d151-782a8867-0c13-4b27-bd6d-72047e03239c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 842ed10357290d008e364a763a24a4aa116bb324ec4bf555f2fc65ed24716dc8
Date: Thu, 24 Feb 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645713084
