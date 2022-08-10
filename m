Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7206A18E
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660092052;
	h=To:Subject:From:Message-Id:Date;
	bh=v93vZG2I91x6e9wbdOnpbn1SQ4t1xDKWj2Vg7IqtGTs=;
	b=fpRBucEbMJv3Hfz0Jtlxc0HKGCs2acyidx1zBjcb4WCroznhNWC/Oq5fIEvtnFBd
	X2p2ul2nVjCTEysJx3dQaKh6abYJJMfh5xCSayQsCLxlx5fnxiKoSnvwZlk144GofpJ
	8jhDK7zA0SlJWoa07eHj/tYG0ARvJmpq0B/qTw0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660092052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v93vZG2I91x6e9wbdOnpbn1SQ4t1xDKWj2Vg7IqtGTs=;
	b=khnCWZaVatdxDSRQylcXmy6CyvYPG3l8bVr2be6W8C8vjY6i/MjBvEUehcoLtIx9
	5uR7iX1lW/cQj9xRZxaMrCACxlZlUn41Auv0OgnibgC9OL0y6Jr8Cz3JoEMG8XSH4z9
	+sDVQnUPKBi22Mf0GKSzsIWR7cuUW7FrnrJhqA3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828532747b-49c6a08b-d945-49d3-a8ce-40229d0ee7dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c87f3508ab43f1c0b46e7ea9a811a67e58cc6a6adbc37ab823392e80699d1db
Date: Wed, 10 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660092052
