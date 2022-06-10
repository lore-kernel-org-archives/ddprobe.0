Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7487A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 19:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654889519;
	h=To:Subject:From:Message-Id:Date;
	bh=dObEhbZ848BTk6vyuA1nCgOYImEzn2dXJbv1rfU0FGY=;
	b=jN6b78xsUlMxIPVNz+r5TssrLIv3rWlqTkdIdETkijj3X4/a3U0cjtXRbfEoD0r5
	3D8/7yf3118cMSQqh9tyxXj19sI7O+yoBDF+IgCSIcVlVML/0JbbAD68WXVY9rkjwLk
	H25Z0/IzmlI+p+foe0U0qahI3TXx+3ZHIAzf6bOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654889519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dObEhbZ848BTk6vyuA1nCgOYImEzn2dXJbv1rfU0FGY=;
	b=ZLMLozrUA4cb1Nu1Rqva1LsG2swLZmTrRCTNBCtCahIQ2ywtvM+JPqlfX1REWu6V
	LyN2lBJ6u9FVqaA8hjjpN3AYBA0jT08XPE+yZfU9LCS3l2pDgB4dbNjTnMNrbsY2RWq
	XYrRdDzNMoMhAfIAi/H42zO+kj2nzu4Cxagvgg7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f1a187c-4dddc5f4-6e77-471c-8ec2-9f5f8bdd6f28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb5df12a06b9226bf65bb46f3becf5639c080c0ed20a88a085bd65853cc1f9a5
Date: Fri, 10 Jun 2022 19:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654889519
