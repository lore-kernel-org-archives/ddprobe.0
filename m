Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE7C7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646093484;
	h=To:Subject:From:Message-Id:Date;
	bh=ERHPFYpzYXMnokiRaXcc14W7PbPV5WdDKGiNuJQdW2c=;
	b=VZZL/0gnVbYnSd3FD4HSQ8kANMtXuClKeVQpp6c2tnT2jzrjT/evkOqtLEFpvSC0
	YQrcnSZqREjkWgVhrfEGEdK0eN7bkaPKSSBmvqLP3IDQI6YRqNv94xVw6INgdWtQ4k6
	MRDu+YLpO12u5IOh3prFXeVDOxVCNGEwyLc604DM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646093484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ERHPFYpzYXMnokiRaXcc14W7PbPV5WdDKGiNuJQdW2c=;
	b=Ndm1BQVT/f8OeeocLtkpKi9AJIiJKeZMH5ZfRy1gFUlvhgjpsA+hlJ/ggZMj875B
	32LaCKS5YeXQlw5zXCLlJR9L0OIQOOJswosHf19c2F3bNC461qKrt/Uk81ntNPVZ2Zd
	l81tQGJgXZ18W6o2iIFUATgJCSqrhPeDND+wv55c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42d142c6-f0c42024-6408-437f-a2fa-601f33f2fb04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6f9b2db312fe68dadc926d4185c301d6db337b44472f35e2ee96a088419ef05
Date: Tue, 1 Mar 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646093484
