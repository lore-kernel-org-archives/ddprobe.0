Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E0123DA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 14:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648219678;
	h=To:Subject:From:Message-Id:Date;
	bh=TlV2JjeSFPBeI2/jvy1jjlrfDCmxcQrvAxpwTa1a/GY=;
	b=KkGEGORNQ8sm9Fyk3FaE9nyes0aiirh1QEXMBluMu69gsEYfZBNhmEKpVFunNwIT
	G1QWP1G8eBQcf8mVmI24xGEU7HJOWvwzguxLiX1LQpRoES/5ouL37BzJliXh8CQFWeb
	6dMLJI29Lj1WK40fQ4/2mAvBeW7l2//LiUG2tMQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648219678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TlV2JjeSFPBeI2/jvy1jjlrfDCmxcQrvAxpwTa1a/GY=;
	b=eFWpV4QjGazAe0LiwwjG0WgqXB9PFLilNo2ksHF9/lrRnMYw1qAc7YRyw+Yj2QXM
	vjF3JmsDoOVUza6NlKkudf6yJTbjg5vN924JeU3PYVzQu/yc1JQ8vo+/bVspM+zbXGc
	0rRzyMxt4L/c2rAYpIMIh3LqPfg5JuLNDYnWiJRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc18c6642-cb633a62-a597-4f7f-b15e-f7f9240fdcd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb7f33c246bc691a592d919d3cde65169ab051e2f6b40df7353259956705ed55
Date: Fri, 25 Mar 2022 14:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648219678
