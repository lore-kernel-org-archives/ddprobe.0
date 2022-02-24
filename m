Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5286A7A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645719384;
	h=To:Subject:From:Message-Id:Date;
	bh=yrhDdAFBABg2hg4Hv6616qhLztgNSS0+M/QLH18IeiY=;
	b=LpAVjh9Nj9rQrifMjyO2nVlZmB6ftfCuHkLoEyjLFe8CvLRFuTXXEmvyENT2vN+R
	X8raY6MQkZTdfDQg1bMJZD2oxCv441S0q+xO+rtyZAkHcbkuvlmD2OsKufHxyS7kx1d
	ecaNhi+/z201slX4ayKcHr/dAg3v9co2cEff+LlQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645719384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yrhDdAFBABg2hg4Hv6616qhLztgNSS0+M/QLH18IeiY=;
	b=gy6LVwG1812Mtumi4jlZ2B5GZhtPf4GNQ1LRBPKGp3CL9ZgM6p8xcn3198tlg8Xh
	IW1aNlAYYxUXpBfFCitjLpD3QjvUGFkiJvTv446ejfFo6FQYYVgyZKNnX8hQVUNsaB1
	ohJmlexXuQ2GHdmQHbZnHp0wevPPZ2E8wGtqcjhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c84f2a5-c48bc56a-23bf-4c94-9290-62cea9dc4854-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcaa7140ca9440deb668516b5b041259aa339bb7161f34b7647143f5cb271175
Date: Thu, 24 Feb 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645719384
