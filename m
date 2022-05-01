Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC2F1FC4
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 02:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651372258;
	h=To:Subject:From:Message-Id:Date;
	bh=QQrPAjZV+KAQ9YV1faoyk90uLxbfgoST6Zz1Q7AUdAY=;
	b=C1VvpYuvPJkUqpuQueuHq75DSDDdTGcy+svDYnd2XV6Vgxy+29fIUmv5qu8P0iGy
	qxD5PYD9H12abUnMMbXVdmTgEqUOR/uOJMTHPIRER6Jjq0283y67ty0S3nsh3TzacQ5
	U4jhQt4/rJJ/ETRa9ydDrf3lER8UWXsE1V0tNz18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651372258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QQrPAjZV+KAQ9YV1faoyk90uLxbfgoST6Zz1Q7AUdAY=;
	b=VibOk6Xq81AsWbAz7UeBT0PdqrIGpFBiz07v5c1WhyfccWXzB0VsxZeusl55Fyy9
	qR6cvHBRxjA/Kz4HUDFjvTqBcToG6nmwiD6VsCw8Jzt3NCZBBrQSVnBiMS1TaZuUXSS
	rn3hm8yO4GKN5D4nh/1Ax9D5n2CpMcP4CoyfFdoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807d74f405-df663011-8573-4f49-99cf-0530d0bdfb4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 485b08e7dca861e23489a559073fb904732aba965b6b093ebb2c5fac90c6c83f
Date: Sun, 1 May 2022 02:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651372258
