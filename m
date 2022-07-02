Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E681FC5
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656757012;
	h=To:Subject:From:Message-Id:Date;
	bh=fiqYRF8zhTQZ6wjzm9SL7ixioGkxYEmYeSEi55SkEDU=;
	b=SE2XKasctTZCJlWjz2o5xLycrkDXxrD1jmo2Bzr4jmiqp22Q/Nbquqo+Te3blvII
	ATU54RlVhTMP41JwXTMu8ExVrfP0qeVbrkglTSF952LeAy9i15SmumNtm8waAl3YljH
	5ZH4ML+EnRC1Zi2Ydw0ofm2ZuCJ677NR0sVnRU4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656757012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fiqYRF8zhTQZ6wjzm9SL7ixioGkxYEmYeSEi55SkEDU=;
	b=XlBdt8MeSh4hBq0mkZZ6gGceB4eZqOsM+i+RUK0mZHaHWZ85HU2mQMDRBePUhm39
	tayknmh8M/aONs5P6Er/Y9QGKjzVRiFC03dv0xMtNXOh2SYAo9N9xv+hclhMwn4OeHP
	yh06Km2zR28BLf4VAMlr9+qSU08F/CTlS+B1LP/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be69c727-11b8b2f2-86ce-4164-a531-f2f8c4141e05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37728d9023e06f5be0a438f216874561b6fc97b8d99c0a662e666dcfbb52d6ff
Date: Sat, 2 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656757012
