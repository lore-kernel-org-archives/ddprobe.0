Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA98323F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 19:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655752379;
	h=To:Subject:From:Message-Id:Date;
	bh=gkERiC8q2gRkWR/6LrlxcFC8MVbdhvZ0awN0faD3xvA=;
	b=fWLX3OP9jZe05ulWOFa23W0tEegLCnQ/LNZuAv8YsaQW/OO0qKkWV0LfpJv5UpWC
	R2sn9OL9bpzgaCduoL2iVVj1e0UWC+quFJyv6Hr49soxoAAFmgvCdVUnhZ9YrEmkE/V
	WdMa7T1OJuNCGh7qBrw7sFPz5scxUiJqzAKou/Kc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655752379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gkERiC8q2gRkWR/6LrlxcFC8MVbdhvZ0awN0faD3xvA=;
	b=cKTUjMZ89JYKL6zbQOZAds+qWTaC51N7DWLrHU1pXKLuWj0lxHIf9hyaFSCSbXRR
	CxJolfBZECszoVeJuQZxEbJG+9BMEI4dJDvyEKcAyGi4v/78XuLc91jy6S4WRe0VipV
	JFtX7kCWk/s14FGdrKu0T2ardOddxpF3Ng5IQxvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182884bb3-6e24acab-6650-41fc-ad18-2bb37bbd3b50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f1e9dcc8a514df98b076d8f547c0e3a2597d37bd46db30bb1c3e81f4e1b05f4
Date: Mon, 20 Jun 2022 19:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655752379
