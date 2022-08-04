Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782722585
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659630052;
	h=To:Subject:From:Message-Id:Date;
	bh=twMlBGLehxVV7+4NgqbNwniNoqvq8Sb3MJJROnC9zqA=;
	b=CRHEgqQNZFNNm/YkxVkP41+zPyFmgkXcCoSOzV9h/hr4wFqJLrnLeo0u3YtWFSec
	payTtILpetrdDFqoCez2YlQWxawhwBfy0YcOae/6tbCnFbigKGnqPSYKWVZJ2o4/eiG
	KXpdhX+Li9iN6qTuktxi4Qy2i4al8iEOzOl+hmmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659630052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=twMlBGLehxVV7+4NgqbNwniNoqvq8Sb3MJJROnC9zqA=;
	b=jRPQ1m7d4gJsQWDZatC+jMY12llOubSVHPrzMpDGAOTc9vrTT/4FnPk0pQhPCls0
	UT7XkhI/19rNIKa4zY7IZeKY74PvIxH5cCHo4ceo6t85H82JSUKCs8/Rfii4aW+WfsK
	UHhG95wrVn4Whe99vKhuqh+eFe08jeGn4NDQpHmI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018269a8e500-818e4978-1bf8-4793-97d3-4ec1a4b558ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5e42ff6cef6e8092ff7df384909a659511a81382fef641fd3b45d9f281d4f19
Date: Thu, 4 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659630052
