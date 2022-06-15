Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6A815A1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 00:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655251739;
	h=To:Subject:From:Message-Id:Date;
	bh=OYAc2yM5+mKKGJRT+vmOcgB9CleZZIR6p8Jsedy1bPk=;
	b=NrU/Xlg8cbHXTN8eI7kVrbiJrnQzYuggl/DFeCEbYc1AubVy8vBNVu85JxdlqSGz
	GDb56HG6sGnPobzwA72f07fj3MMlGVs3US6N6AWHC70IkuviLadyO0SsfQG7TqBvKTM
	khXc+vBfbXL4QUqAoWWT3LYqSu83ekeQysZMW/jg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655251739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OYAc2yM5+mKKGJRT+vmOcgB9CleZZIR6p8Jsedy1bPk=;
	b=MFtCHYEOwgLqqUjIbJ9+mU66ix9k49rH8/HQJdl26rdhy7ZOMtwX2gKl/WWIPFUg
	/TEN1XeWq/eq4YQFLx9QwSjXjDEIIIy0RLFKq+mtkvOX1ps5Z0v2ZuHEsoIOrgu5Mew
	5ax+ApnP3qW6JRQkMqFTzEGec8LYXE4tq7ak1yA0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018164b1228e-f5a7c57a-a196-4d57-9819-618b2304e86c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0d0856abf5b13788d92aadfef3f763c3f299bbbfd2f7d5ccc4825ede5a625c8
Date: Wed, 15 Jun 2022 00:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655251739
