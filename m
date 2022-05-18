Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD301FAB
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 15:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652886299;
	h=To:Subject:From:Message-Id:Date;
	bh=q2wesn06xYmrZxpxey1PCbUrU9KoexZyrkeEhfeGmds=;
	b=K5m2rt9Xz6uPMhTn3yeqbkZ2jRmp5S9iu3N6aeINjYuQKWm7WPLZhVOFHxgYqGO4
	6oZSPn48gjUcZrRoo+zfWMmrDTnx1dLRsRrUW5pFoDZIWF84rfAMzw3xrmp8kxSUi+h
	8vJJN1Jext15T2X3lWVVfuNZHMwr5UEXCtJT+zAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652886299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q2wesn06xYmrZxpxey1PCbUrU9KoexZyrkeEhfeGmds=;
	b=ZXOtGKoIKR2PH+JSflln/7PO5zoo6O7ycyvdi10JtieNlazNfMx/7KSGhvM7f4Za
	FwL+KdpwNFFgiMauDTp6na37WR3J5qFyy/cpVSlvflGfO1EYhSNyjV/cb5RYz0MF1H4
	8CX2Yum9d3uMX36SWDr9Zgok2OYsmZhHrNb5bDnk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7b362a8-95e1af90-122e-47e2-af02-c6f8e7611a6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78125086f99d305887a0d9d30b4a79567982a606900ace495ebe32287e2e46c0
Date: Wed, 18 May 2022 15:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652886299
