Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1829F3C1C
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 13:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659275452;
	h=To:Subject:From:Message-Id:Date;
	bh=dalPes4hD6V9x8MjFpdL6l6dvr08qErvTEJwnZTokXk=;
	b=gFJ1EDDVHDAqF4zo6/reQZJ8e2mTjfRXWYyNsndXtOlV0uCj6mAUiF5iERo8J+T9
	CCT5L83ieG26g7JkZKJc3+Fyzr9zFxNw0IeviZFxyZH1ESy8MY653MVx2I2glX2ToQe
	Qyg24NTRMKXqTQy8sVKCOlI2iK7oafaEYRGLAdZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659275452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dalPes4hD6V9x8MjFpdL6l6dvr08qErvTEJwnZTokXk=;
	b=GlU/rJw57DlcJYQDQFhhcMjYA42LC7UreJa6s9NtrIzabkcbPuwEejKXzQD/ygRw
	IZi9wOFifw1IgVRDht4OEJfe0AYwvOR4TW2K1rRwRQ7WXVVwP7kDFKWktu9W4aE1TGA
	wpP4ql0bDuFzUtydcs6LqYRJ3I0NhvA0n9Qs51zM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018254862069-822ed541-afff-4daf-b09d-623c6629522f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e84ef4a4bbe84753e676c23253dbbf356b3562dbd810699a23d968ef1d2cea5b
Date: Sun, 31 Jul 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659275452
