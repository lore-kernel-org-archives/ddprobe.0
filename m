Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE4A3FF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646243785;
	h=To:Subject:From:Message-Id:Date;
	bh=r6oOJ3eq1VJCfXjmhkmcj9/lpA0P26eT8VbZUtOuZLc=;
	b=E3iWt9VtsycKtkUH/nAck4aChcwlFHQ9EjY+/3Ur9mdD9Yup0UdQG57l9eZAoJJR
	lZxz/tWvVp+OqREurlfqR3YWitL+PfYx7Vs2hR43qQA5q1A1hVxHmCmST/8GBK1q3dy
	G05E4I6rnF2UEeQbWY7jsgNH8S/53s2R/9RYUf5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646243785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r6oOJ3eq1VJCfXjmhkmcj9/lpA0P26eT8VbZUtOuZLc=;
	b=SL3oik6fHwX5l3DScsFUQC1yLDSzNZy5g2XZKEsvN1CfmngKuQTRkqUdYsSZFmyc
	Zc539ILMoFZ8KLf09FQOY0gRnzsmx17zohqtWZgne3pxcHOHEyxBt/mfkRjHj8nRsbw
	y/pdzETJgEDG63azgcU7KATEXv+XkTxY5HmIDLmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4bc6a8fe-e882daaa-14e4-437a-bb5f-3ba29dfb5ecb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a457e9964955d33a91bdaf43328a3ab6e38d7d82860ed711182574577a74704
Date: Wed, 2 Mar 2022 17:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646243784
