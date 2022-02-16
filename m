Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5363F28E2
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645049784;
	h=To:Subject:From:Message-Id:Date;
	bh=l8j8b0ELXfWRIa3cDamdO+GrB1o8iTCC92qg8yTxE1Q=;
	b=USJE2KNKxpQ4BNTeNzQ3Yw1qwd57HEoAqroEIjQUgIxoL0qpRauE2YfQUdXMY5/t
	6VqWXtI8Xslq/nt0s/9GSxxcrTCgWF3DHZTc0plPSwkEZqJn5nTnv5oj9mukurGLmms
	0sCEEGzesy2BpkCokPvtakuSJipoZlta7XP6rdIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645049784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l8j8b0ELXfWRIa3cDamdO+GrB1o8iTCC92qg8yTxE1Q=;
	b=lZA0pu4VhlgzAxGDzc8RrL5j4gCFRqRUJaVUbN5rwLoqUyW+gYoe41tPE1Tis65d
	eenNCjxi5u7ARL1roiovkxJuGgQJpHoMiALzbiK7Rndem1Reri06BqLdHXCN1HuCE8a
	ChBYRLHyvZVvRJCBOVcUXB6UmRDmT4fwTTROp4ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f049ba9db-2e9a91b6-9a4f-458a-b701-cf29a04bf77f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b47e6df0f62915500ca73dea0bc7bd468983f113dbf0b1f27256d2c2e66fa536
Date: Wed, 16 Feb 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645049784
