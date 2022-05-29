Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124F815A7
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 04:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653798599;
	h=To:Subject:From:Message-Id:Date;
	bh=3pPDJp7LsxyFsvpeK+jghMNt/xzNOj7DbsRPlBjK+NM=;
	b=ifyHOaAJEzToz+XkLr++lZTeQJUnH3rJhM6fxwnA1x/yIXcZ445EFmrAmxt3PuoF
	tcnyqmbbUePMF3DJ8x64Q7ErljKKDp0iHyXNwXyg7icgxM3tfSxG5isk2QwTaM63YDz
	CTtELPnqTI17VbJpJ7mBGMK9jIqgO1s1YUI+G1Mo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653798599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3pPDJp7LsxyFsvpeK+jghMNt/xzNOj7DbsRPlBjK+NM=;
	b=EmB/0Hu0M3Ie8Aed5yXJsuNifpwQsD6U8fCY+U2Hn3ncMFxQulEmH+ThG3/g+Acd
	gRQtrXJEXWM4AeA6YxJ19QQv01AD8bLFECEW4o2pS3Z5m262mibIsZMNJDPozMEgJAL
	2FutUAVKV/rWLDN4O/u7dd0hf3GyJW3LzNVyUxCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810e13fa71-3570d204-5a79-4637-9508-940904520d81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f913677fdbe6960f14868f5b243ea65c6425faa5aa741733ca083712a6d7e55e
Date: Sun, 29 May 2022 04:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653798599
