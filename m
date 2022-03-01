Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07297C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646166385;
	h=To:Subject:From:Message-Id:Date;
	bh=qu1L0sNLVWdlQ/XTQEEkz9E1BbTuRj2PNDqMvJEExLU=;
	b=MthDRC0IOMZfC3pRKeTQJ28uZ5bQcfYplJvRK80/WeKRZbAoC6ZZ3yzofJcWKdsj
	QcTgqH6IxFkUfs6rZKN8iBzOGP4dDyuC0TSU7BoucDOo8Lj+RIbOc6yK38YvplB5U7p
	dYZSaL8yHoFMtmrvzeYktEjTAM/ZugLNye4HQWa0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646166385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qu1L0sNLVWdlQ/XTQEEkz9E1BbTuRj2PNDqMvJEExLU=;
	b=UeXnfCVFznUCxon78p1izYAkTYDXD9flEybrHPaKz/0vqKc7Boi0MzYi5GEU5qeI
	H8oS8NQpnNCuw7MWTWToVFvwkETaIyluouWMJ0OQfNCIeqbbUj2XrOWiu4NK4hqk44E
	3kNn7ZYzTphdofWm/NjcEleH2rpkN7+bbX42KjcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4729a062-8f78779c-6641-4ef0-ab2f-328672d5f772-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f36203d43643dda22eb60b1aec2f6c4ad3bf534299ffae13d4177f1ecd4b182e
Date: Tue, 1 Mar 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646166384
