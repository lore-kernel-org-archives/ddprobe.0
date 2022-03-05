Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743896AAD
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646507785;
	h=To:Subject:From:Message-Id:Date;
	bh=D5WURfDl+TLUZ10gERHVGmGXutG+9USdb2IElOUkHMo=;
	b=eKSddB62DjlWYkbgL9XdVtR55iDknDh/uTfFJmfLK4+RM0R5k/PfWzWkE3ec5Qnu
	CrMnlBgRmATwYSTeU2kqpzJQisZHfcQZpdLB0Bvr/zjsAZxSF+cVxm+scegFaprmc4U
	LpBeilPgeR2FF7OMk0PKdaPhwBJ3hXjBZo4eCV7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646507785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D5WURfDl+TLUZ10gERHVGmGXutG+9USdb2IElOUkHMo=;
	b=YjkwB+FLAKG6PUdVbDp+M9S9ScyDVGfxPhRKj12qiHh24vHwGbJtxZbmqZJwEp5b
	Wp8mGWC7YD5yKGw9KnYZi1Mj35aNWU7WMTD4fyRY6ryn5EXC9UZzaMIjnQotV8Ari/g
	4G8Fn2Cx46KcB0t+vZSdwMKz5WQGOYiDe+FRN+ZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b82fa14-737dbdd1-9c18-473c-9301-0ac0ced47993-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac2f0761bbe416a81fffe2c1bf9744cb4d60a58c22e4bea2771b6046ef370326
Date: Sat, 5 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646507784
