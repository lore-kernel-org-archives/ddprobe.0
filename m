Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774BC4C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645209085;
	h=To:Subject:From:Message-Id:Date;
	bh=Z1OOLFXcxliwYIGxe4PSZwYvtCrMYs3l+iOFBorcg4A=;
	b=WhS10qdV17YlJGu41Zbw4mbe4qEdtHxhIzzoNkxAKctawmKNZYcRvMPwnQkGEt1M
	29tDBXLQY5CrtPAPYF2aTCO6flGAS+hctw66ccsRCFHyYr58nMWRGLIlhEZWdOfMVyI
	0hJHAl+HB6UuXqH7wa3qGuon4KxumlEyvHH3yqoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645209085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z1OOLFXcxliwYIGxe4PSZwYvtCrMYs3l+iOFBorcg4A=;
	b=LGYth+n9n+B8k80jG7l4puigH7OAGYxaVOKXgwNnbcbV1uYQDVzeiPp/CD+pQFgx
	YbkFYzooQcfrOizaHU/QasLWtslY4PzA5Aae2gs+9C5izTvp4epj4lNwGyeAiKm/ayn
	Hw6sTrQR8W+hTBkQuG0TzkkJcWxj3gsLxXgLZLbU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e1a63c5-3e26c23c-30e6-45df-a80a-151e86e95405-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7dfa5b4b431eff056d18f60def2de2e4eeabe25df435da038868e49b6a3c72a4
Date: Fri, 18 Feb 2022 18:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645209084
