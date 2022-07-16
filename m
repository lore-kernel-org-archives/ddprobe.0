Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF57638
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657970212;
	h=To:Subject:From:Message-Id:Date;
	bh=XAkTXTNWZ9jbVlfQSEczlis6+QMteV4j0kX1BvBq3g8=;
	b=RHuz8/1YxxSk9xPTrh8bqLPV3Ak1wWmTTso+gkNnA741eC/p6wtd60iHyFpzg5VB
	n5M2UehC01xzPkEY7ypLFz/sOOJxXGAojXbHpyOCInD3laX0lkdlEe8QCv5xOL50cFT
	0gWtTdbjCTr8eCtju3TEGgtVdWCx6p537e3JcAHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657970212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XAkTXTNWZ9jbVlfQSEczlis6+QMteV4j0kX1BvBq3g8=;
	b=ILmoaWUlCw4MQV2nwrIlKdbeX45Y0y+cl2atgo9aOwFhYhjgPlnq44KjJs6lNyjh
	GF8im+QsvcupLZkzArMuiM0dda72R+f2CixOkpHzKMrWfFF50H1jYtrA5bJmeHrtLjf
	3sqDoDc1OxOpXDFd7u67aemG7ptVMGXVAVi3x0BU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018206b9bdb3-f6a7cf7a-b82b-4333-8eb9-4635ed069826-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 383ff2add4f6521e143e2dae28523e45d7af000a3d2542a45d481aa3a2711a78
Date: Sat, 16 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657970212
