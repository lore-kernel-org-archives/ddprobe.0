Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBAD4404
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660743652;
	h=To:Subject:From:Message-Id:Date;
	bh=oSHQYIyQj8bfqMjmzi3TNycGPNEtxkyhyjX1qW3CZJ8=;
	b=YOFdaM//xW2IWmtr2IyLh68LNpEgMWOsVdHXYW4ZoSmzct3DHu2BTWnlAw9w1uib
	QXEsy316ckCwl/XmG6gbqWtWHbVcXW3I9m6qvLUuvz6H6kIrzreeBLwUSxbyIC9YJ8p
	oqsgYSHUiZskLepTAe3lsr4322GZd4OuQsU3yPc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660743652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oSHQYIyQj8bfqMjmzi3TNycGPNEtxkyhyjX1qW3CZJ8=;
	b=dlU53ZLwazCCXf23Y++CQ/RH2a8MkU+RbcDGY1NKtjgDAwz8LXqfrb0HZJjabfx2
	qpHwLivJYSzZO1d3XecVyNYULiai0VrBXZiNKcRyJn6xgCPWTybQfnVLwjZZXZTjMaQ
	i5bqfrjsZEHGDRtMcKPdjqOK6pCm8ofQkn68pKSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac0914fb-2c4f0ece-7f42-49a2-8587-4f9c7084c5ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f91b9e01612279d6c604189ef431d25b3998d1494d369f0538476086db75ce56
Date: Wed, 17 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660743652
