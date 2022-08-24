Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F347E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661356852;
	h=To:Subject:From:Message-Id:Date;
	bh=hfQnXaHtQDuCVgO+MLlzSbiBpKyBMwQuqXxhBH29Pi8=;
	b=NMTvp52cg0WXna6j1NgWGJ4F2pwWuQIHw9EYH4Pk2lu/1eZF1DKbqwk1VxY4ML5h
	Ocx5r45fvZIdLsLPn+2MMIAxH4i2V2CASg3a/OtLWerJ4ckbtBLctTF0DW4vXc5D86T
	hX73Vv7SGhQT37qA65v/1jQ2i1GA3/J/6RQxopkU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661356852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hfQnXaHtQDuCVgO+MLlzSbiBpKyBMwQuqXxhBH29Pi8=;
	b=VDu9V3DyZtsdjl6SJiuiNT9k5IZfWRPaVDGWVY3vfoeZSNr+lSfWqjsANTk85uWS
	s1p4utprqapNQ1wUZ/UVTV4HQ9x1G06D4GdR2LBcMFceWJoB2m52ApgDf+S+OXYCEbM
	2MP5L53I+pAs68qRHnE7ciQRVacfMEoS6vNqahxE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d095c56b-3c5e439f-7e65-4321-b99f-82299c52961c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23a96080cab4b3d020e43d0b7d90ff0c27a7428f880fa68ddd7ce8d59d6e5cea
Date: Wed, 24 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661356852
