Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073EF7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 03:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655696639;
	h=To:Subject:From:Message-Id:Date;
	bh=eAcZAWLRVzvYBYDGvVA7U9jT3RKirT3qlI+vQKAUHjA=;
	b=EmVH1I8nwhw6CJ2MieWc/Dm2cg4ja2+qOGVnbt4wGe+vG1RFCvp2EWMqzgUeJ2B7
	+7SEKtBhbz2Ly4NTw1jR56q4fs4Ju2/8VIZttbXSh9hmVCy1ZU8VYGTVA/2VTeVsQ/p
	SPYKtxUhxn2nM8PmEUVTQpN2PJgHebXttuLCw18Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655696639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eAcZAWLRVzvYBYDGvVA7U9jT3RKirT3qlI+vQKAUHjA=;
	b=HiFWAJfI7hL0SrvnVVcJzxwzTxEv0+NdU27jLMJB/6+79j/TSoY5j93YJKFbnmDd
	A6gtqMQRqRvHsqL3U0Y92BkpY3b3PVSyiH3haj2YiiCyRvayF8ngXqqgSmSxh1jGpat
	Eb6XmH2ri00aP92wfL9LJdkuyeiWSGZeWyHra1gQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f35c530-a9d4dd34-fb80-4cba-99ef-003aac6dd696-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1814806f4d61f5450d967822300286b51f0bf03aa22f20ed75daeeae351a6b0
Date: Mon, 20 Jun 2022 03:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655696639
