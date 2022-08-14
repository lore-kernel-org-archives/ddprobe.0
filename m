Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 868FCEA2
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660509652;
	h=To:Subject:From:Message-Id:Date;
	bh=gsauI0JT+6RECKdO1qnldwik05D7hgcMoHe4HyIdjkk=;
	b=LgbcPLgFgrgDZ2IiVS8Zj93k7o0vLuZfjywv252awLtKuBpxxnWcHwoe8S3TsNjx
	9GjgXDcoUyCjs2ZNRKWRU5fczC9NIYeLLxB+mkpmV8dXhk+GdrJt1Wgkit16SG/2J64
	wbj/cwshL0BXo3+uKJKBEW974DcRHbedYcDrUBZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660509652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gsauI0JT+6RECKdO1qnldwik05D7hgcMoHe4HyIdjkk=;
	b=O8V2y9VH0b+uk9hLQN+ino7TG3pDY/XWmHXWiFOdGljQf1e1oWiSFIsN6KsNyEI9
	J3gPU+1iU8hKr5LGgnLS/jgh0L1fQlbE/5ybr65IyyFTMRQkoQN6S9WD40oagkLk1O4
	MsOW8C5mr9fmQahj6QUsDRWDtlKVdCwKsIjLy1Kw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829e168686-2891d9c0-6fb1-42d1-aeb9-c159fbcbd886-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c25da9158b14928853198a142d6e088cbbbd5a62381c3e43fc01dffe4c17942
Date: Sun, 14 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660509652
