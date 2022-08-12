Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C23181
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660263052;
	h=To:Subject:From:Message-Id:Date;
	bh=dU/aUICLqhkpXNogcT44ymRANcdGy5psOKHTm3HQb9M=;
	b=hQXW+KPsrwndJDZN1OTViX2IcMuI0O/YJN9j4SjsvUvIrAk4t6vcuJRTwEFO0ZlA
	0Iw2B0KUF+KHDOGtbwm7DI66XIVuTlsnlNv9MbBp7Q67mnE+HEBDQKKaBvsv6z02KrQ
	VO1oTLLKKqur0yE1oEgW+IyKsvhUlevKIIFNAPrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660263052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dU/aUICLqhkpXNogcT44ymRANcdGy5psOKHTm3HQb9M=;
	b=UOaD0OuTliyIVddBnaEP8Yoa4KuaGprHMZwQ+Ga3ZKn/dza0io+gmKZAZenPj235
	SLR0OJYTzh3FxgiVJmQorcTfyE0y6lEyOuKI9Y7Gr8w9Xsw6q/eUVkmF/BlsZObqka6
	Z5l59N7EgzP9YguvR9pAHu9hfdcAAXjnZA/2iDrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828f63b4f9-9f0e3fdb-d2d3-4df3-8352-1f4445e33cd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4d0fd721c7b7e6cd02b4573d0cf31cd666720eb135dd7b17908cde532d0cb9f
Date: Fri, 12 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660263052
