Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84E633D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647860785;
	h=To:Subject:From:Message-Id:Date;
	bh=uQPCtDH+Z+m3P4gNgxNB1NQ4zeMjzsFAT/4Xf7G2H6Q=;
	b=eKLqBaid5+0ZsW9jjlF603VBC1wJuwtMAMsvlwEwfvGgLEeJi94dmFxqwFUIk1ZH
	nUJSeaXFwnAFDaHqCdJ1JnH4xBbJ2512AsfJ/H40DSN+mIbTOFJK4jPHTt7sfMOmFco
	oOj1qM3R7qKnbRUsRdLItnR+aUdavfVow0ZNuMYU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647860785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uQPCtDH+Z+m3P4gNgxNB1NQ4zeMjzsFAT/4Xf7G2H6Q=;
	b=IoPFC1tEYdYE3OlU79XxipMd4ebd3bTitJ71LKmfR00IrYHY4xpAUACcSgh0MtMd
	ESkw89wd8++EoRZ5F8TGa0twaaG7MtE5A9Z1jA6VTFYOavTowUbvz4gHfy+cVrGueRP
	qgkJx8PYsHZDce73Lggl56RA9PjoCtrrR4j1NJB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac281ebf-6847c039-c373-41b6-807b-c3c21abcb35f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e84fdc80551f3c9e5efbf7486a0867bb59634e47b38b1008ada68902f0ed35a2
Date: Mon, 21 Mar 2022 11:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647860784
