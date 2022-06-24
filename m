Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143B4187F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656081412;
	h=To:Subject:From:Message-Id:Date;
	bh=s7U1vVW3NZH1vMR5Z+X++lGrCgGSw8AC4Jw90RnYYhM=;
	b=edALnFuZCX0S0g+nxM6la5AfQQWgMDWdg7C+JCYbAjvXdFxKqIGcDN+0LBaDo/zR
	BXVaeHAwfHaapv0HLmqlwbCqnWqzEu5NmvtOysMQiGBaLgT13Mtkjw0zC8UQbr4NmvJ
	5v3pIa9o04SlewV4EKgltwvlwGa0vm3YeDTwj8Cc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656081412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s7U1vVW3NZH1vMR5Z+X++lGrCgGSw8AC4Jw90RnYYhM=;
	b=PanInrB2CEvY/lIwZ6NaCrj4n9iStWMeQsf/2esJ4RrP9XGXZIkKVbNO9wS2Lt4u
	oL97Oyk0mjdRRxzK6k/NNQhtNQwa/fbHCPnG4Rp3IFrgijvE1RxxihKqX7Xw4mmcJVz
	GQKwa3DWzo4KrkgeMvk9PMntLO3WE3IVO+ARLFXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819624f0d2-547a2754-65cd-430f-b5b9-5a1d0347440c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db693b3552b080b429440d4b130a517549bd5cc7a05eb3b51075bb5e60ac74c0
Date: Fri, 24 Jun 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656081412
