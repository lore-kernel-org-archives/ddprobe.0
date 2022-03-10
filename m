Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C8D7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646908584;
	h=To:Subject:From:Message-Id:Date;
	bh=LNxKs3ecXkx528/hQbmLwdj4MwynLIx1fcXAMNmYreo=;
	b=VOHb1JSCJeMlQAW7nABvr0ZzantoGfpI9VUdfXfw/PRwcQ0ClbiktLKM4rJcuyMg
	z4bHaC/aEBE6jSQ8W4jPU3KgvQYhxCiO96nict5YfCTbS0XHoqYWPPb8s0XeSVFUwxP
	LaAnR3ZCRpqyQw70L4jlrhdBTfxoukyaOw7eZAEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646908584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LNxKs3ecXkx528/hQbmLwdj4MwynLIx1fcXAMNmYreo=;
	b=QohlhCnqhmLZv2SNv3ymZaYVrbhoSBheiVZ6g/f2Y9RmrDlc4h0zN3eyNbm5wjJX
	k9jXnerAKTL7nP02SYY/glXgXeRAYya7A1ixjYNy6APGY/OgfleUAeQcLz73AXl4ZJI
	qH9lwGn4oksuekzSBYfAdZ9WzdLCv0X1AlmBCfag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7366b337-7f1dd16a-dc01-49e9-b9e5-c96f37ad7479-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ca41ef8953cbfb5935e48aa639f07a6a704d6f472ddcc8b9c513bf85c01807d
Date: Thu, 10 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646908584
