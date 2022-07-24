Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005F07E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658650012;
	h=To:Subject:From:Message-Id:Date;
	bh=YHcp4qRLZBOSzjoxh05/succbhGx7k8U3bEGycYcMR0=;
	b=J2zoq6pb31Mj8cJyWetP/4tElQiYxR/fZfdh6oG3m7KmSLwaWYZRmBxs7Vu6QaHD
	IfhIsIORuv63y28cpasaa8Onu0HS49dSoCptq0bacjTDr/UzvBqJflltcJLgcBuRjEt
	QD1ZNHKnHi8BaP4oH45IH5y+lY31Z0uyWui9TPw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658650012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YHcp4qRLZBOSzjoxh05/succbhGx7k8U3bEGycYcMR0=;
	b=gesckpNqnFgbN9nxPUQvh1bHnxn0pOydlQcdJCyQzv6+mpkADR0pCf7a+8M1vaFE
	ZK+3Sjp08Plra3f8Oui36e893hk0pmCP+9/drnU/MS4npfWGRauDV0Mk1ib4VsGxhTi
	BTtPffHbjspnIKO5ltCJd9WGG9MVpJD30Xl4pdSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f3eaaa6-0694f969-e9e8-465c-8eee-247b7d79a4e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 018c3549b938f9a6f10e1547e961d58ff6f01f5b3734fe92df6f81a98782827a
Date: Sun, 24 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658650012
