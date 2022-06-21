Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DD8A41
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 14:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655822039;
	h=To:Subject:From:Message-Id:Date;
	bh=ONy9MiQA1uPj7D8JKcqnDF63Q6XhHwlj0bbbS3nyN0c=;
	b=AeYAKdW82B/G2Kum2FHDAsz2TRLfN1v4nTToJzMHHw3d3fV4DMCBWAZ98+CX89jF
	Z5dxGr0Etm9ZZOGnqMtgz4ArxQp+F5vMSqxoRgl3ZR4jOAB/+6nHERExVkfJp6lmfeE
	pqDEIBPb6pkRaHFxlP8ocppUI4nwrxIxDC/tCVFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655822039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ONy9MiQA1uPj7D8JKcqnDF63Q6XhHwlj0bbbS3nyN0c=;
	b=Qk5Pg1Bf6YxJEkv1xM+dZ7AA42yUVuGbMS4hnKBmyUvliwB/ItPQuFLdB94h/stY
	1z2bsCOQuBdu0uVb87M9QqFg0qcRghV+1pOfLCkpu73jz2PnzUGttqcq/opKpOIjdZL
	ZyIq0G6+T+LrItbN/IBJx6mQZwOqdKm1AKF3/9bo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018186af38b4-a864d719-b000-4804-981d-97c88de4ff63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee8afac3f0244d9e2fd653913cdb7deed872820c69c0a8558021bf42befeb94a
Date: Tue, 21 Jun 2022 14:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655822039
