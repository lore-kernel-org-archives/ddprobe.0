Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474137B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660696852;
	h=To:Subject:From:Message-Id:Date;
	bh=GsSHd7PFj7SuRhQBqRBcZzXtzaiErh6ge8/JHDsY/XY=;
	b=VuC84YWYBafxCbzIOOXewcpap91XyepDd3Gh+45/KMQEz6MtdZxBAU4IAmaTQ3dT
	+61MBrG61RRY1+H2ZAoAYS/lKgoZXgVymceKXWxpjqSFbe7A3YxpJzX36zm0DjlRQlI
	l3JMqgAPUil53TgFkWdU5dTOcrHXDNi6D0BhNPtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660696852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GsSHd7PFj7SuRhQBqRBcZzXtzaiErh6ge8/JHDsY/XY=;
	b=fraRcEUPoSx2jmuedY5WPYQ3G9hvU4pbq2YY+jFGxP8K9W0JJvnqG+Yop609eRli
	c7Ekv13cGf4wkvzA3tdR/bwL0m3XMgz8fqKWeWDcOGwD4hoH7UELAYDH1DIHuDKI7kW
	325H/kBGW2yixHesDitcD7qCUeILwEczTXPr5Q5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a93ef8ad-d6634cb3-98a4-40b8-a965-8cbf55b3d0bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f06c618db76df5e05172aafb6485fbcb316bb24b356064c8504f34f20e17e7f
Date: Wed, 17 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660696852
