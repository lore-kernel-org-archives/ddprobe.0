Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE76736A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646281285;
	h=To:Subject:From:Message-Id:Date;
	bh=DLWSDG3a9i1C6J9vIL9TPrLRN4S8MYu1amurXyFVY0Y=;
	b=f7+r4Tbh6tOcdiHtPCMruVGZcHCOYIF7s0TsyfCxH0lswgt5j621QbUkLfIYpPSi
	1N30S4JMbtOKff/lJqWWMhOE5QN8ODMTtys3tzM9mYW+3ArFwUS9+oVfAg1AMzaKdk8
	eu7m7xQbUzXTu0dlku+q8vbc0kRXfanKKrSZGzdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646281285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DLWSDG3a9i1C6J9vIL9TPrLRN4S8MYu1amurXyFVY0Y=;
	b=B0oJhFRT2fgPKHfz4Z6rRdLZ04I8ABUoNwyP4WD0i6ufQwyVvcYOJK+5fnJ2deDT
	N4GOZKAbaPWXJpLqQsZs3z5R8Dhjcq9q7UaA7V17ik1ecrn5tki9GQbneOx5cXJIKkG
	hkAXbgTWszp5PhhGwOF+cVfw24AbZiq5cikPBt78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4e02dcff-df7d2afa-1ba6-4b0a-a452-7b953aed232f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1c2cc14a5bd8d7a25d6cfba9ad1da62cc1c500aaae291bc0c36440af647987f
Date: Thu, 3 Mar 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646281284
