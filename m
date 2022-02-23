Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB247EC
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645585285;
	h=To:Subject:From:Message-Id:Date;
	bh=oMnNAIND8+8ALOzeOcodi/YgsQBHSazIlG5EDX9/a1U=;
	b=LbbyVT/8719+fULK4zWZ4zKxu6WwRAl9NfnTcQGayB9uFD0BBE5k6oWt9kcwh2BG
	rj2FZNlRZyJH9+kw6h3wywv/4R6uKULB3NRd8xngfXgy3bLsm24R9yEtXBSkjSDQzAI
	HWjBC1mtp40uRm4pPKbi8MsBdiB6yx0yaGEvwRIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645585285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oMnNAIND8+8ALOzeOcodi/YgsQBHSazIlG5EDX9/a1U=;
	b=BNiladC8AUksoalD5SROmBE8fZfSGKh02QlhmgCs9hJc20GKGa5eKWntbkqoMk+n
	0Xtj3z/gIRYas2jYlL5sqvzMlv/7RpiMzqsJXCT5zLlRIXPzJRNx+RR0UlEoR9oHH/J
	4ACaRlq8qHWUsQKJr5q7dIfgawwba90sSpeZNpBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2486bec9-307f5920-1efe-41cf-af6c-44eac50f093c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c54e2564254e357cfdec2f4997dfd42b5bc33ae9d2ddf6b9fd06b885049995cf
Date: Wed, 23 Feb 2022 03:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645585284
