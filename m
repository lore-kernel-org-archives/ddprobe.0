Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7E45C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659297652;
	h=To:Subject:From:Message-Id:Date;
	bh=LB+iz0MmyiEUSQt6V2ETMHEc3WLJeaiLmsI1xh8tnHw=;
	b=BUCPgBg7eQBiswDT8ZXzKWlbivGNE7yv+Tk1i8ZRWKp+/ZA0cMsospErSZ9IlrfL
	6NTZxO8r6WF+FXt7dmsScsZeYacXrl72D6m5Fin9bR7Xf4rCkvejb6fdZAZzAUZ2J5X
	R6Rv+wv9h6GnW4XCbGW3cqA008JD7MepTdJcgwqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659297652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LB+iz0MmyiEUSQt6V2ETMHEc3WLJeaiLmsI1xh8tnHw=;
	b=YBRAnnHb8xqGKnV3R5zyYeOSJfDpZOzmTpas36jqrAmG22Rz3Hrd4e3xIwkHC3N1
	GrkGxeLwqvqm3dv9fD0CeErFOaErfYczzbJ0XooaE8X0n79ElleszZ6iMBOgFzfnqxg
	PHhf0T2BPjtRjSz1L9qqu7LbyWVyL5M/ZgaZEFdY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255d8df39-1fe57566-62ae-4cbe-b3fe-635bb86abed0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3193554a7ad430b605b52bd121bb9584830d90d9096b54a6c8bf48fa5a82a01e
Date: Sun, 31 Jul 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659297652
