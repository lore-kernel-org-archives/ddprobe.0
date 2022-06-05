Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1AD746BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 11:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654429679;
	h=To:Subject:From:Message-Id:Date;
	bh=A01Y97RQx8tcp3XZxpir4ehB3wacvWz3EuRkiY/45c0=;
	b=NkWNtRv2Aq0Pq8G/3sfJTxe3jqFEZjem8vXyEhusvD3Q51GmcvqR/Ofd/iwgVR3g
	0fk5PM4yHwoaLLuO7sPwGxFj4eqeERmGLuWcs9XulTkDI9YXUzoQ7Q7ZiLewf2uSofW
	qM9Q8bPOFrgar+5P5/2tJXE9FdVny7MXgl/5vAd8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654429679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A01Y97RQx8tcp3XZxpir4ehB3wacvWz3EuRkiY/45c0=;
	b=UO54Y0fY0EXcQaZ4peB6+EbYa0xPta6Cd74Ase788D1YJEtGqE69tKn9GUfsG0CG
	oYOSy3zQyzLZKZX99o2zly/aRu4NLtK8CbhjhwkhXXw4zVHovzSyCrhRmVCo4Sxb0pr
	ZxdKH/OpvAVoNcYmYxecmH9pP2D1JN7aHU1YDG8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018133b17eae-0e51e1c8-4914-4412-9add-9c403f6d1aa2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dac2575962808629e31ee6d5939f3fec9a2fb01def676c8a09c62da7646c978f
Date: Sun, 5 Jun 2022 11:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654429679
