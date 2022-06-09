Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074947C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 02:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654741319;
	h=To:Subject:From:Message-Id:Date;
	bh=rTLiJ/cgpm3utB3Qf7EQtw4PzJ0EtyVcjUH8m5lJqfU=;
	b=EFmEmxq2T1a9/lNa/5GW5Q7R3J6YnNAfrpIteol/n/UsDqrsqTWVO0zTCgtogfA/
	yAfkl3mvEZzeCvcy4pTSWPT4QRDnD3Wov4hPKuotMDEvc7ybCLD3pdVppNAOc2k76h3
	hXxQ5Pwn6K4tEbNlZJyQCHq5udIAgI9z26kYO/r4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654741319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rTLiJ/cgpm3utB3Qf7EQtw4PzJ0EtyVcjUH8m5lJqfU=;
	b=j9MiK9/j/pGtYExomq6z47raqhUdBDW09yHGWCZnbR5l8uiPWmcU6vimY+fVOomF
	nUEWdSSuGbO0SHMsNf9wR/R7Q+iYNuA9tidT9TtFbsEaB28upJswHDL2cQ1Ls/fgZgz
	yZKgZegAnJsyag6D/ZUtAksbxhqWksgRMkKQSk6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814644be4e-705ddee1-58ae-4a32-8885-9c20baf2d75e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86b72c134be4f6cb12c66640f7ee8bb96d0bde85ca03592703e6b00006bd6ad0
Date: Thu, 9 Jun 2022 02:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654741319
