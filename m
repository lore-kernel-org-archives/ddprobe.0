Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271374681
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 14:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654439519;
	h=To:Subject:From:Message-Id:Date;
	bh=w72a0BxNM6+Y1I9gzXAKNHu6bCP3u5ZcF4PnhQfY8c0=;
	b=QXsUbtNpuk3eFK9K6iADihgkdpqe7zkR2suKc9pPj6HxSupQvU1pBFWBQbjAD6KG
	becAxGe3Vt/QI9I+m8mHcAw6WSVn78BS+g8DXd9Ue0C3y/zSMu8JOd+404BD/LX5L5X
	Jt1TEmQsJ9xq6J0td/BMMkZFmyGpaeZJ0dmWsrrg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654439519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w72a0BxNM6+Y1I9gzXAKNHu6bCP3u5ZcF4PnhQfY8c0=;
	b=j/83LMvzBGDo3rTYDNzI0xMrMPYVN6E8bVuqvok+az4zaxfDKME89C892K+B6Sah
	pf8TUWH7JvsowNbcRHloTBBWxYb3v+nHq7yA867anopVcrW/P3ZEgQ4LDqb1QfGhf/W
	+oZjTi4WKxRqfbLbhsNOGHseYHQ9Y8DKu8r9Abxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813447a45d-dcbee76d-bb0a-48d0-b0f7-87606944daf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c151b8c82e628bef6d9ead957b8109b2db5498cefcbe455f39f9678dc95b6f93
Date: Sun, 5 Jun 2022 14:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654439519
