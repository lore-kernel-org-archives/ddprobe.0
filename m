Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1228C7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 07:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654587119;
	h=To:Subject:From:Message-Id:Date;
	bh=pEz8GrDfyVnaySdN3madZ+WJCc7GQw5KEdb07Ko3bRc=;
	b=D4aH2zTo6CyPYewptR47r1bZJZZvqBuyc38WxYZa3YF0zyL2f93pJGio+/Zsb+un
	QE96UK8pZzB/TG6Nv0BB/Sp25HzkbNtzI1uzO633QRYUlJhLqyC2y30npEHae0AEv93
	CG8JJPsLDqNtL6sWz0l87xDAs/MFBI0i1Xestdms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654587119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pEz8GrDfyVnaySdN3madZ+WJCc7GQw5KEdb07Ko3bRc=;
	b=JlLPxmoW6KraXSWV1vgXuFAY3p9jK7MYQoteZe/YnRriewPZ53kCQMBF7zO4KQ+a
	4iDQuNwGVFlPJLWCJocKxU7N55J7Pcw8SZ9mYbOeD21CCthPSLL0oWyY8K+DGVGqcu1
	rxMsMPSM29fp5aJDQLcqre41E5IjOoNShZbLanXk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d13d6f5-0fd61428-60fb-4957-8800-041febb2892a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a75d4edfdeab8179e00e204269c60b47e5f0c6d796cafafd33cad25be3712bb
Date: Tue, 7 Jun 2022 07:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654587119
