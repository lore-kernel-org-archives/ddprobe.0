Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97A2C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647961285;
	h=To:Subject:From:Message-Id:Date;
	bh=f5d4YTesERny/rAm1sp41b2qafmXOPJqJzj97KCukhI=;
	b=OSBhfCmdSFgCOuI3cZvyltArCgPStPc23XZSrv8DECk6Fm6i479/mKCGm3rjWFwt
	olj3OAgxi9uy3wlp3BbdixdpgCIGV1lbu0EnhXOtinThMvYbZ9+NMSxb2IBdrQE/q9K
	jJ8O1eLkX6PpDmt8X/IBAgGKQch+Vc/6OofdLzzQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647961285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f5d4YTesERny/rAm1sp41b2qafmXOPJqJzj97KCukhI=;
	b=AeBfLLN8KiWYPZ/JibFbqLOJ3xavoNO9MgGBUaRNEhijmysbePrdXXXjmXtRcn4P
	uPcMtKt2n+G4Zs41NbhOYwwS+Xr2mAsjSXW/qACVQiY6hCaHsIPE+CNt5k5hDzYXUvb
	zsU0rdvnMGQ9A7Cb1Ju96+JdTYHSjguwO31epzTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb225a0ab-3e2381b9-fb9b-4a96-9417-9e478129fafe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57011e7da977d4a9cce58aa8c859b1c378ee2c2579d9a1f3812949ddbed539cb
Date: Tue, 22 Mar 2022 15:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647961284
