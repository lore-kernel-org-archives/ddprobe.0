Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3FD3218
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 17:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653154619;
	h=To:Subject:From:Message-Id:Date;
	bh=tSRUDdKp8p+O2iE3Acd0Ti8n59+zhhy7xLKwzQOB3bw=;
	b=H5nVqktNw7IXwT+u8mzzrmuXCq0O0g8/kvE8CqyLVAAltw9dO8tmPmO72HftU3xC
	AGeQEvk9Sm193G48avyaJQEJr3soLW2eB4sNd9tLvHc+A3LDxX7K4C1SQHK+yhqMlkC
	u+5yxMvJRxZlPtKiVx76zz5ZttKrwv3X++YtRad0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653154619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tSRUDdKp8p+O2iE3Acd0Ti8n59+zhhy7xLKwzQOB3bw=;
	b=DBih2Fzhyr2EDvS6L3Ij+FjgCS7XFWrQ3Q9ugDUuc6tclU2ktORxsla4Xp0dTU91
	mbG4MlcbpIsg94tAjYD2RWBaLs+KqRTCDbnx+lN/02NDzpLbU6keoiviAvna+X0NAmI
	btlViwIyKBDs0wioluzH96xMqHAXWnj3xKOSWO00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7b19f8c-df058dae-e294-4fbe-a9b1-915163f95aa2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 543b9b74378d0258810872c3752976065c9292520bf66678cdda5fd5680245d0
Date: Sat, 21 May 2022 17:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653154619
