Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0780A29AB
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 12:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652443379;
	h=To:Subject:From:Message-Id:Date;
	bh=AUvwbR9qMVwyKLgGnImyYCyCe86nfOShkgidMEha4GQ=;
	b=BOplrhfs6W1dv19e6Y0ogHg5tmwUJLxnzt1y/Ib7xN6+2roWL18MZ0IowRRR5oDQ
	H5CJCuuYLa/QEIIDgBC199qMJhPRY4EclHIFTQDOOgSxDu597zBKsldrYWIGfsNxIMB
	TtCMMu//sGrxutgmxjAhahglJ29+4NVCAH4a9BsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652443379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AUvwbR9qMVwyKLgGnImyYCyCe86nfOShkgidMEha4GQ=;
	b=ZTq0/+CwQ2onTxdb+SASwCB9JFWgrKAuBCork/AVGJwibXfRTMgDbbdsD9yztRh3
	hZgIKDynGE4nHQ1zPc9W6nkedx6g7qgYdB0oM+TBN0yAa3jLJIO5hqFxKM8zPM6eimM
	pG10MRyqkOx0ZLbpvQ/aXjviG10raNrekmI5SIaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd4cf634-8ae88c7f-fb08-49c8-8945-f3636ab0a23b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 395158957a8fe4216cdd73491873b725bca616ae090c683554f1d2d5f98fbe64
Date: Fri, 13 May 2022 12:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652443379
