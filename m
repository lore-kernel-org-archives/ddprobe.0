Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A191108
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657441612;
	h=To:Subject:From:Message-Id:Date;
	bh=mDRYDYh9tzJ8VQVWIY8Mnr3q8Q63y4BGCovHAo5354E=;
	b=dooybMltzkNlwQ59Y5PFxSBtlJUl4z/GDeK+TppVtcS0owBmLACxmUHKqzq2r+jo
	lmbaWMKT4yNykvS6/gRJ5QImNQdKMVU7CnrGg68b8N5BVooD+q68N21e4u8EXckWCed
	+CXq0OxJy1s2DkB3QDAtXppBHzVhZUrwLid3xOt0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657441612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mDRYDYh9tzJ8VQVWIY8Mnr3q8Q63y4BGCovHAo5354E=;
	b=gg+q6iS5045Ok/B/GAYbBFxY35P976cjbM25kgbR2v/KRj7ZML2RhVsK5V1Xpubc
	unzxCoDUA6XPnLVlbgvtu3p4E8a6fu9z+z5mysfbm1hvFSuL8PQ/Vs4Gj2jF3E0o4Fj
	4ea5W/jZaajF5aTw17O2W67lanEl0PWcKohmH5js=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e737f248-8e59223d-4747-4058-b3e2-aada0922c9e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d79446f02aea5b841f4b6880928d4fe6f1b4f4447430ca1a8abf2e4429a15ada
Date: Sun, 10 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657441612
