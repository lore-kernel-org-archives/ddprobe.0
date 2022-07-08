Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC4B2563
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657289812;
	h=To:Subject:From:Message-Id:Date;
	bh=b+OY5s+VSEN+2nVtISygnkqQs70Pz3PF1PHbUdn+mGY=;
	b=Nj57DMBW5ZhSteJ7y2ymA8eEULgvs32bdQCINxSh4jXHuvnIc4+BUYhvULxPIyp2
	fozsFAelEumsNZv3zNDFPJvPPzMux5+JLehjtTKkkifjWatZCh5EPXv1dO5TB+O2/Ed
	5ZxS7t1RejY47FHB9iCz0t+H5GlkzinYDjRRCsMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657289812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b+OY5s+VSEN+2nVtISygnkqQs70Pz3PF1PHbUdn+mGY=;
	b=Rr8S9W+9Q7XvkzOAfChumGJjMi4Vuc4n74t9/0q8UYxuaSuw24VLinCDYdPP5RQb
	aJ2HXBjbasZLS1IGGH7vKBKYgiKn7qjwj6hw92XjHdWjilE8ZAeu7lQHSKTY3nOLNkh
	P6YRM7NJCuHuk90hqYXM1y/HYfKC6178SpfcKvDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de2ba975-f7e195fb-0c1a-4d8d-9f1c-8936e18de2d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ad1334714449f00cca0bcd312b059bab3dd980faca9bb43959bfd06eaf75bb2
Date: Fri, 8 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657289812
