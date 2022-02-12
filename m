Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45A67C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 02:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644634259;
	h=To:Subject:From:Message-Id:Date;
	bh=JT+tFRNpgYReYTXJYGcIgZuceBy0U/pccNFlWYKwkFw=;
	b=lCo53jXbvWGSZqye6nMMig99pc2vygvtT3funLm98B30Gc0x77eQ4gkHzMXvdq6y
	TuJcYnhtWr7Ay6EawNW0hsUQtthfoROL7o4Oz5w6BQgbGXMuhV1rqAZNTY171F8Qmdm
	hsFWIBHrcLpO/T3+XBwr+ohVqQc104QtuoLRvad4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644634259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JT+tFRNpgYReYTXJYGcIgZuceBy0U/pccNFlWYKwkFw=;
	b=mAqlW8fkQEiS1dN4+I/q+nwLqFNvO+j7dP44CnbE4+EvjIIaRzCXlRmA2NYk3gb5
	pSwWT+ucPzao3Vcoqv7ceNx3XOkDwzhHHJj5HKmjxxQrLjCCNPbQaqMsTzi5hJqTUeD
	jfe3P+UJEIvkLbBmjBLkNBzTdPXvQJtXDYA+wwu0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eebd73dc8-557e2d58-3025-49da-bc2a-d72a93b3c91d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b450969809b7de12fff20b89cf68956f3f9ba44d9095bd93ce3c5191d6b7b527
Date: Sat, 12 Feb 2022 02:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644634258
