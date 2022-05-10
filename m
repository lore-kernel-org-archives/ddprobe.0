Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222C01FD1
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 04:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652158019;
	h=To:Subject:From:Message-Id:Date;
	bh=o2gY/3Khh40pP9ja0N3xsw1kdnz5CeBUfOgAtDxHdMw=;
	b=JyJP3eR1qzpRljmxUXBXUOxjYNtHANku1QagB9Q0K9kONRBsrsXNrI2gUZpJHbsR
	P/802AHYFsJcHbRg5O0T299lpfvl6iqKiMcFSc1ZjqsJSUXzIHzI3QSaIsKdbzsU2QY
	0q3gflUImoQiN8BurWmFjKkii1CHPWItmwyTiROw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652158019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o2gY/3Khh40pP9ja0N3xsw1kdnz5CeBUfOgAtDxHdMw=;
	b=OXBKc+CztdjMV3hZrdt4i0l2ErWSOT5Vydsh/IrffpmlKT7yiy2gWhAIQApCsAxX
	tM8LuyaWtQl0Ms2txi2iUxrFKDkyosMZE9g9i5pk7AGyj+8RUvmtP7aCi3QbXh6rb72
	QumpzJn9sy4lBhCqn6rFPHdLpKhK0Djx4LCYhuTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac4ab6bf-10fcda0c-b6fd-4a78-8888-3a1e6f42d270-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 406c801b48d7df58def0b3c24794d4e07f344cd5aafe46706bbf65fec399110c
Date: Tue, 10 May 2022 04:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652158019
