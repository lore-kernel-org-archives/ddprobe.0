Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18987E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658602612;
	h=To:Subject:From:Message-Id:Date;
	bh=TZ1kmrb9pevCRwrd8xy3jP9VwfxfPfyvSe7HfXnaNwI=;
	b=CmyoWRPqPRccBWu+OOfLDQMXNSnn88cSED54gwv4vIkJusTRu3fXZJaeuPUBNtaW
	+A6V9SoQUUfaHR5m8nN1ZHhNWu4XtligkCdIvbGa4ym9v4+Aq+hNIw4uJhokeSePbe0
	wJcGq0DX6wLxwob4w3w4FGVMGMV7ofkzDB3Wi74Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658602612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TZ1kmrb9pevCRwrd8xy3jP9VwfxfPfyvSe7HfXnaNwI=;
	b=hh3khYTkTdSpsdhlkj2Wl2kXcPQsSp9x2CD4j93eKxjIqEGGCJVKwhtDfO6flNrQ
	m+FsgjX9/tvd57Q55FF1B7i7uvnwmvwj1ok09YPtA1ia5NPZ6CN7J9KC430YSJWqwTe
	gcsL1yJh7AFSLkUM9UGgQRBUJp8Hh4u7f7p1+22Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c6b6640-645c158b-779b-4256-bc83-7d32701580bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d45fe9029d266780b2ba13d3eb9eb7f7ce8b226a93b18e00a73d3ba38afe764f
Date: Sat, 23 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658602612
