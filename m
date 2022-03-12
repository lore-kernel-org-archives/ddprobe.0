Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEC4620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647064884;
	h=To:Subject:From:Message-Id:Date;
	bh=Lo20wp+3AGALN7wMHtFq6Fe3t6KNflNZtFqwSTVBcwI=;
	b=TSfNzP2Hc+NsbeR2exSpco37q9aCTbul7cfu/FKVuz+RrqjckjaU/dCb+NyeO/JB
	BAr8+WfdAxxGciYYLk93b6gyWm8kLrlVKrnQhmSzAj+82OppQfRHoZTlmQA5oztWU6Y
	uQcE/Jt6de7kBQchBECncPlSq18EsuyokXfqbaCE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647064884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lo20wp+3AGALN7wMHtFq6Fe3t6KNflNZtFqwSTVBcwI=;
	b=d5W0NHc2QO9Si1+Hl2fvZuYhVgJCYnTYUv+V9rBmPBif38q5X/YJo4IynlkTV4Qa
	0/RHPPnB63IXQSLwXA8pJdaGEpKOHwMB29aC9y5zPvz6I7rctCxNCblNkOfSKLjhHjs
	DyEr9yFcshIUm9z0RwMJypX6rEyJQ/9DzGcpu1B8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7cb7a619-1a18d9ac-114f-483c-b5f8-f4e1e96f3cfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c50c571733a7d0c0084ee4cd43a03ae5fea549d2621ffcc150c672177e219726
Date: Sat, 12 Mar 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647064884
