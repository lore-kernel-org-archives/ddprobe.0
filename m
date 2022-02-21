Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DC7612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645405284;
	h=To:Subject:From:Message-Id:Date;
	bh=j2aKehGTgLw+0I+srcUcLuwlDfDEAQBjTU2f9E5AXIk=;
	b=gbFzWCsVKz6KWNI+rMoF4xq7QXVKMJoHz0GgLZqt4DPcOgs4DZ5NazB1N42dza92
	dWvf0rHa+0K31avJ3mhwQGZvJaWePRhSQTKfQiLA904B+z0GBFPch/Otbb/My1I5SYn
	o1jCBVvVpFgXbRehQII7vT2xBVpSNWiHOKYvg2Ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645405284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j2aKehGTgLw+0I+srcUcLuwlDfDEAQBjTU2f9E5AXIk=;
	b=e0vUh81pM8h8wCmsVVB8DLkzEwEl1XImVUF8iA7QHnvwcJKhI0skV8+eXSfxS0ND
	C8r5aT410SNUb0RFlLmoFNBxAg8nSg6EqaGowIb6mjJ7j6pTeN2TIkoA5xzas2ywl+L
	QmDiClMCC51Ag6uod0T5rMY4OblJLO7L8sVdz7dM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19cc29a3-60a4535a-5c42-49c0-a2b2-576fd711e9c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2d99a8bb677d4d1a79e98342c78475317203836791ff7211919d9bde8615601
Date: Mon, 21 Feb 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645405284
