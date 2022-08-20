Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9397E2F2A
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661022052;
	h=To:Subject:From:Message-Id:Date;
	bh=tEHaDXOB3d9xHY6BSGq3jgtKyhVuKSkjCyczg7+Khf4=;
	b=dOEbJ/Wwg9BW0hSMpDjCi0s10+fQSo2eDdCb5TiPHTjtjTaGZ4XYQUyQ7jRDmQAo
	XCVWgYyQkprR7Oo3lIaN66WMzegLM0e1bTWxEMfdgu28BNcWpssJSRePH06rtjCcsLO
	+ZrKtALYTBE6O/z0ef/P8b2ynMilP1DEBzzHXYyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661022052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tEHaDXOB3d9xHY6BSGq3jgtKyhVuKSkjCyczg7+Khf4=;
	b=lC+OgHU9Od50Afr8PCb6cIrYHALRn3iJDsDcTY+TaoqcqD7BbE/3xLo7zxqcpUBH
	EYotwFbMwfxBtZ7AxUd6Gxeh5l3ovqiJCXtgzYXjRCDfKqzEDQ5PCHu3y1b8Lxb9lB1
	6AuljijMG2O1NB0b8U2V2i/l11qtON66p25VgBIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bca120de-d9daea00-59c1-4a35-a1ba-4061a2c47fcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b39a6665208a765bf76bd9c0d714eb143774fd1cb7f7539e1661c6ddb4fe8e3
Date: Sat, 20 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661022052
