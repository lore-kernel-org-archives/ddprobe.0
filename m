Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9A67E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 07:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650957598;
	h=To:Subject:From:Message-Id:Date;
	bh=05x7zceJvqMehqvgWPOvMn412tfINivHQ42NnEyfDoY=;
	b=Ew6xeNVG/BqaV6PG/6VpcZVqom9pRigJMVFJEoc6CbfTVx33aPXpMxH5WK9Mevn3
	03GFuDgL1rXki1aVg9SFdAE9PcMkPdB+H8Ls3kHmVZOJ7rMR8aH51gBjAJM0ZgJSNi3
	XRDysqrYLfbFClDJXndnfqUaP+QZzM9yUSv9H2FY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650957598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=05x7zceJvqMehqvgWPOvMn412tfINivHQ42NnEyfDoY=;
	b=BEBeObYz4/PrZAwSv1WyS08NZy8jK+tDPn8Uo+UZoimQsKnmRanLV10Nq7LniqKn
	u6ncgpMR2EmcOA3nB4KnfNMTBbbSU4GwyRixnPYGVfC4+V4e4x3xZnMhx1nDstcEji3
	LlMCdtFvP+JhjFgS5dAlSYmoGWbO08CFggwJxuqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064bdbe6a-9befb140-8545-4f69-ad8a-fe20d704a1e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8d22bfc9773413ed4769560870044f4fb8dbf5b7f4bcf558a6557c9c0228225
Date: Tue, 26 Apr 2022 07:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650957598
