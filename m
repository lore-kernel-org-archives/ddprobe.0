Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED21115A8
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 00:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653785159;
	h=To:Subject:From:Message-Id:Date;
	bh=0MN1Z44cJ3BItW5yI1K9gyFQh9EpxpIkIOMAd+FdduE=;
	b=gea6Y9GRP7iERvc8gjZc5mPnaPHSjy9tpuQNiNFn0vwiKhqzvdGy6L7t//xsVs6Q
	LuDuhv5uA83IPr7MGPGHsY0IelfY5AKsQl2lQyDEyst0WVgBLWCEqYLyleWi8wzB+Jh
	Nqa/uNroVgpFifUzvHuASHGLJI6I+0qd8AqEqoqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653785159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0MN1Z44cJ3BItW5yI1K9gyFQh9EpxpIkIOMAd+FdduE=;
	b=BN1/KsU9z8QN6m6f86cHmukUtLU+s35cJkzpW52byiCqmKSbNxJxOvF4LUBeaV4q
	pBxxYcJUAhTC2ILGjc1WJzprym6vkv4DFV6da4g3HJUI7BFRCcdLsBbEE8VQaqGPP6s
	p8/e7RhhpsRtuJQUK250vVfNGgIKxbiNcprX1z3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810d46e65f-5e4c1136-ffcf-4d34-a968-940d774f9b36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c57a11280713b5e0edfa69cc8e7786ba4d2fb76bf945cd83ce9a77d789e30c6
Date: Sun, 29 May 2022 00:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653785159
