Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A29744A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645983384;
	h=To:Subject:From:Message-Id:Date;
	bh=LAxbHiy0qSCY2ZP0dqvi4/NJ7Rr2wK0cdfB3XAx7+qQ=;
	b=a89pNpgrHyi2XbErRw9DhW/0wsXqGMB5fpENXHQiJNBqWMHLQmpsoHmzPSIVxCJ0
	ZvbDLSwwbKcpdGrcIW7UmW0vko3Z/neSzbQI0WsLmRV/2WJvnUg2vG84GrzhCaulBRn
	lq0XX5RGe3saYHe9Fn5ByHWSjtR1zOEs4Ebv+t20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645983384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LAxbHiy0qSCY2ZP0dqvi4/NJ7Rr2wK0cdfB3XAx7+qQ=;
	b=iMDAvmmu5izeMXdt7cxyRjLEHr6SLOON/sxDUgDc0JjXec2ziUOC9KoGRYcWKn5A
	RAA9sqQ3V5vDaaiAJRsfg/t0GzWVudRGDMbxB6oiNn2iPwAcvkSvUr/8+n4SwGtWy5w
	oZO/sG65/v/dFTaatcDwxKgiXpqVxra+pJTlgcFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c4144c2-f489098e-4599-4964-b387-49a75372d9d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc5c082a6b34e040ffc81484611e257f459a6ad90cd86007b1fc4cdc278906d6
Date: Sun, 27 Feb 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645983384
