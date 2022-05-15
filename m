Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605347F5
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 10:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652610119;
	h=To:Subject:From:Message-Id:Date;
	bh=IEE01VlA7fzF7s0qx/FVQpBI0SWLrIfg5V8rzXcBbX4=;
	b=GDjjh+sJdyMuVeA9Nr2TZ+66MLcGJgRPwSNCjH/ox/FywDWMAuO6zFfLG9sk0tD5
	ac7Krm2G//yLIHwTIAOFACMSiArCE0TgeCrBMpuxCOYc5pHre+XKzB+6unmBlYf8pxS
	rgKqit1r0fbjwn4uvW+XA1bz9kRGzsI/ZZf0U4JE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652610119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IEE01VlA7fzF7s0qx/FVQpBI0SWLrIfg5V8rzXcBbX4=;
	b=hbMgFZ+l4RfjtajuNfAxTZgiFQokVesdaCWPx9BRJIk32qEltD9vrRxiORbOXBpc
	aDuBByw+JmIXuU5JOpIMY/7xQfKbTDn7poI6eZxhkImwnmpMpH3y2UA/IhpmrET233M
	uAPxCRbPP4+h3UYld0ZZzODQSdGSFuI/URNqpdUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c73d36bd-8d3f006f-2cf9-4536-b53d-4ce591c57082-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 943709ae4ff50ea05af44913bf4765774c36b4843abec58710dd4ba44173f46e
Date: Sun, 15 May 2022 10:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652610119
