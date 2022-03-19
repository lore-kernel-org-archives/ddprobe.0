Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB917A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647659784;
	h=To:Subject:From:Message-Id:Date;
	bh=DYfh6CkmRtraMcw+M8uPg3YaCNk1ZG+mcihmSR/U1Ho=;
	b=J/LexDOUAwpS2nWjj0ObWtsP9iZ+4EbNKFEH0abeBCL0NNhky7xmCXHIByJWO+Wp
	8CzWdcIDo/FVR1fkhQ7AffkQvep7aYMnIQYjGUaNwKh2F7XtPXJMUrqFBQQMpS8tYu1
	zZzRaRYcL5lanK2OZqs9dCdjHSxKcbyJ+Bn5zVh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647659784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DYfh6CkmRtraMcw+M8uPg3YaCNk1ZG+mcihmSR/U1Ho=;
	b=j+gixs+S8zL85YMHg1mYPfn+X66YH+Bw/vmpyVqLA7cIcUAcFqikEul+ASbqE4jh
	n9RwC2QCaT2TxhzMDoVQgy/ckzjejPQaAnyQwp7puVcBgp0p6XW6a/seD31glwBIbUE
	pYN4XY5PKCTK/KUoCJBjQ0akk0wKg+s9tBHtaXHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa02d1a2f-d1dcf94f-3346-4f10-ab35-835e07d4d195-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb2c7481a47cb2c71416aa375ae381486f7898824a662fcf85ad330a72b2e44e
Date: Sat, 19 Mar 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647659784
