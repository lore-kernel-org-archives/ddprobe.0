Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EEC31373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645737985;
	h=To:Subject:From:Message-Id:Date;
	bh=fjjj0TsRw8BK4ZZ8hSgtXlDq4PoKrL+iIHGE7Def1v0=;
	b=g8eHTxgYN9pFwLtxc9OAWVRfdIg5ciBxzSS4FpY5dNpxtPLaqMvR44Mz8cDHuSOl
	MQrrykxvIgoRHwXMw+vwlDjv4rGG06UW0NMI9jMv5dwl7R4bjBJulFmHYiCPsn9FABJ
	TtyUreU7rlmpzZf3qqw0NvxR8BBEfs3FlOY8ZwV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645737985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fjjj0TsRw8BK4ZZ8hSgtXlDq4PoKrL+iIHGE7Def1v0=;
	b=PQVJuJ0OKRh1X6JRTKuKUJsNkZHZAJqEKcEr/lyF4kwyAkjC7sJcyxY/Wu8yhAwP
	iH9X0Sc/q55ktoVnjQbvYD6RF6Sycusfi5qo8H6r/uP90BsJCDZQ0hmBiMA20O2Cedt
	O/q8lf+0AzkTjbnXyK3TYQQ4UlnqpQhAEHBTWZzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2da0c2ee-010b12b0-daf7-4303-aaec-9e7c33b78f39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c17fe70f6a72ec2542252fc76a6fa2c2bf621350da3b85faa265b00a795652d
Date: Thu, 24 Feb 2022 21:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645737984
