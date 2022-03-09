Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900255107
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646854585;
	h=To:Subject:From:Message-Id:Date;
	bh=3ErQdwPpXfBY+LKPwSnazRXQDt4+m7h3m2VpoGWdAlY=;
	b=JoYv5O+br9ZX0Np88+xS0RMjrI9Q4qxEL1w//Ql6o/Ux/L4NmXPTtKqhc4kAL5pP
	eVVzk+9wG0gbg4IJy9t+oflH2pdHieGMzNyhiaKIiVF9Wpl75ladRHtJexu4Jnbft58
	O/22eR1tk4WRFkSI2eo5l8XLeJyEL9fVQq9Xv4po=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646854585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3ErQdwPpXfBY+LKPwSnazRXQDt4+m7h3m2VpoGWdAlY=;
	b=AqXkThcRNh0W/ZFl0TBfAgaZcpBkAjBGl3JwG4UcsEmNM6hQgpp23U2YTOLnPU3f
	ab6KLXuWRN2nQmR2mUA0sArB2Zz5sPh1pZEKt/j+FshP/nL1DQNzrg7VqXkHLmWZmXw
	3zECiASxgp6s61wukYnzqjfW9AWkpQNjAe3QYf6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f702eb9ef-7667b904-b851-4f79-ac94-b08d48347587-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d88c5fbb0e83a348730db6e498bef3e50d499870190faab6a05af284e8708378
Date: Wed, 9 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646854584
