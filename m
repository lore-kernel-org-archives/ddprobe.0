Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A25E2F4B
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658705812;
	h=To:Subject:From:Message-Id:Date;
	bh=Iq6KLXAeOnqF0yCYhQeQCWBks51B0uJiTmO8U7ic0mU=;
	b=b1VDUursXjJ1NVPIjmAWqyJ3CHXvUoIr8QJ56hFEtk6PbzMZy8tzAwznblaCCisg
	Td92s3Ip2ifNed2PiXBN6AByltY+Yg5BeIpkof4zbOI9n0IzjjJy7hRVHpEfwXZ7YQ0
	ykYML92w0N1CCT1GNftOw09UtVEv62gbeFMTHFF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658705812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iq6KLXAeOnqF0yCYhQeQCWBks51B0uJiTmO8U7ic0mU=;
	b=FNoRD7QbwMTxPnrVM4Slj+/+qrcWJH8QBB063FKA850ekH/YckDyafkGglePRHoO
	zGlK96Bq+MpWuK0mooymi8EHSoscM3KaSC+NmXaTW0dioSUNMj42neRS6zInevSgomo
	531vXNmux+UReQcLwgbouu8t6/pA6XxE/dApR9aM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018232921b2b-5cb31347-ef5c-4acc-beaa-a314bcb086db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6e9c30e2ffe1096c8b93fbffefb8ce1f4a270c21a4dfb66c5211a93f0c73b87
Date: Sun, 24 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658705812
