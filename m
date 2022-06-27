Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2570F4C89
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656366412;
	h=To:Subject:From:Message-Id:Date;
	bh=cAnqA/ou92CItPrV23qSpVZ91RvwyWRmFHFEPCH/4gI=;
	b=i4AAn4CRTlBNI9j86VZq8+0n1eUT4ImD7no6Spp8w7iz+wqELyIP1uO6TUoDcjf7
	uuB4VGLD5ZCOQXeOuToErnirownBnf5ErWXQHaGdJVaCztDsGn1BtU++J760XTuL8gs
	xrqSH9FR9Oa/1HxzSTqTIg9XA7iZ7lS7QoPodD8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656366412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cAnqA/ou92CItPrV23qSpVZ91RvwyWRmFHFEPCH/4gI=;
	b=GcTkaE3WhDmz337obmaBgZgJfjnbmYfFigKmdWdKm1w+9tnQSQWRqe4357JMGLWY
	YkphPKgubuRxXXAf6mht2Af2PhtZxjmV7HVW5DY2SUfZ9c7srPIxWqalLSsfz8Ch2XA
	qF7KTxeU2HRIhSEWo7kROsC6a34PTDTcGlXLopU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a721b204-7ebb64d0-63d1-41f3-afa1-0409735b122a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 534d9810652081b46c2b89d77845dbe14b89a497df8cc3f6f54cfab08092a207
Date: Mon, 27 Jun 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656366412
