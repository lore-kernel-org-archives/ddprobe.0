Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7CA7C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 00:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655080260;
	h=To:Subject:From:Message-Id:Date;
	bh=ADHwqItjVbN7fUL3jJMi9WPaFiIIGV5WoIprPAkEf8Y=;
	b=RiLbBAi3pyojBe7waDAcMEu59IhYorpjQH/eUqvwmzsFeJzujWF/S6MpcOjJ/m9a
	78SResS7eSIxVR5IkASsY5nBPQw0OyypRgVQBedPdyDI7rgz2m31MQZqaMBorAB2qbm
	/ADBShsrOHGG1iwALUNWN62qScau7i4dJnYr4Jj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655080260;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ADHwqItjVbN7fUL3jJMi9WPaFiIIGV5WoIprPAkEf8Y=;
	b=fb5EiB+sd75emS7pkEWIAy1XKWK0iFx0B4L7a+lpQ1b94nHv4wu4+lM2NmXGiQU/
	B0BBydVtyPxrMKdu0CkZhWPRXKpr0EcZzxyICkoMNDIqMvrtrY/65kyhnrSCTiZ57Eb
	j0xk/wnn/qP6IzLjFUR5Uot+u0X235ZvlcavyPEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a788ede-f9b73f78-d20f-43f4-99d2-0bceda750e1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae5b05e274776cb08c097836ee6cb5fb4c43c929bddc96f15dd9bdb0f8b79a73
Date: Mon, 13 Jun 2022 00:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655080259
