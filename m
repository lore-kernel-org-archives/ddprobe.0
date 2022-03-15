Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792F223CC
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647367284;
	h=To:Subject:From:Message-Id:Date;
	bh=MbPRDZeS3poc34sKKEPnxjXZawWlYC8V82Q+1f1WKMA=;
	b=CPCUbemuCtnr/4ulHaWuSq824ig6qcb+HHdeYDSJHJemyrZ2rJkXYwY1k3ldTiyI
	xFh5EWbfraXlJv9L9vNSQBz5QNmWYL2pTizbvdgLsyTMBuFizhY/6BacZ3QoqC/Eq0u
	2WLq26PISSIDbGTh2oCrC/CvmMdzgPf4KlVQj1YA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647367284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MbPRDZeS3poc34sKKEPnxjXZawWlYC8V82Q+1f1WKMA=;
	b=RgBsfYrZGmuV5x+80sgaamiKBGscZ61EV89JtSCwYiLjdnWR8vK6zjPJEKXRBUNu
	p5ZIkRtdrb93/HJHM4/p1iTFVGm4QMTcnUFKojzPCxl8uHs3Pp6t0lKiZ5E2f1FkkPk
	kHy63olMp7OZt4x6n6QWl2aQKj9u1SusknI3Tp2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ebde84f-723c212d-0206-4b45-803f-902c1f653b11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 442f946a9fea616334350a38c43313f8f3dd017aa72ccbbf92f215a5f87dcc15
Date: Tue, 15 Mar 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647367284
