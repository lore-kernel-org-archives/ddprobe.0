Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62072F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645923684;
	h=To:Subject:From:Message-Id:Date;
	bh=QJGCK/laQom2kb7ZQxXOfa3soqNUMsWyuPti1Zg5yQw=;
	b=NwISCm2pzhvHPeMN2Tq30dnc1DHJW31vUyRD1ITSb6jQiEhqx9wtc18gqlWktAq0
	3tBjIFOH/XzXvqafAFTR44FQp5UmTdX2AXB8nYGY4BqPsyZJU8OijEjTxslSFpC9w95
	d1wZiI0PY64A1iZ5R7Q3c3+7gFGyVfazP2XMo85E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645923684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QJGCK/laQom2kb7ZQxXOfa3soqNUMsWyuPti1Zg5yQw=;
	b=EInNRP+/UgaHE6T/ysR4j28mtyXxaOkzgg+7kyMG8EtySHCvLCANVHEuZ83W2jCS
	AwW+9WXDQ/w9m6UzHbHvHZi6D3Zd9EUBg+MGwbzzA4ZgECyhSmJqpLbVL37Q9JJCzR7
	LOZIgF3/AqAh0dAB4Dvcw0Yhf/kgM0/6FCeIRNNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38b251df-9d95f3ce-5fc3-4655-a56e-7030dc5585d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48c2891cb2569db9a015a3462f7b2b8df7cc4aaf2242aea004f508b01672f536
Date: Sun, 27 Feb 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645923684
