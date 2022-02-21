Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B6A233F4
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645479085;
	h=To:Subject:From:Message-Id:Date;
	bh=W/yXOGlG3vrSFBbqQfBikr7pLYbFNtxO/43KfAnByPI=;
	b=bgqqfpy7RjpanBBQz2qhTNrEeZ7QAZw4c36dtOtTs+fGvFABxOfxKoE9pqJA5ERD
	zwnbZ8VQ+Vi0fDMAvRy2b+iKugDieXMkKdsjMs0+jwJSDEOw/04xqZr6MR+Ss8BfUeR
	CADy80ojXzhJOdhCvoXyHQInwcfNwSNRs8NyV06Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645479085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W/yXOGlG3vrSFBbqQfBikr7pLYbFNtxO/43KfAnByPI=;
	b=Wi6VUTTLK8BW19cVIqrmy9Kw+7MzVhfiTLPuYGo56KyGbesHNaZibDj5z0U/rZQ+
	73zGMiRSqdjTHb+wJYqBcF8JfGU1kLpjdTuf5orIT4v7ojMjSFFcJpjXqIrdYIYIDIV
	kfQVtPp8BtRLiFTiayVojM3JiO3Z8Y2G4/Gz8GIQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e32434d-2b982146-6ceb-4a18-9793-42f662c70b37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2581ef90c334ec8b03afcb0956b543f80bc7f853ca8d1e2da1646b0a591e70a1
Date: Mon, 21 Feb 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645479084
