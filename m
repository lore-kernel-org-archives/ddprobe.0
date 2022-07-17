Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082EF7F6
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658051212;
	h=To:Subject:From:Message-Id:Date;
	bh=+MWig4Zy7Q8h3zseZ/FcQeYdjgKmJlnSWLsUzDRG6GY=;
	b=gHc5OuNhNNC17XJt+ZzaWggULJNj26O0q7chjHfI1ZKJ6Wys0V9DSc3ie3pfOM9b
	U2u6lH6h/n7gRdzFWHR4swZ5s0T1ovMvnLohCsOdh7tsomxsfSqoufg1gL03CoYHtc5
	xGDXIjnu3wGLufAKLYkP6pf8O7hs529ALXRdY2U4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658051212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+MWig4Zy7Q8h3zseZ/FcQeYdjgKmJlnSWLsUzDRG6GY=;
	b=jmG+Pt2Z6VZQ3LUX2qLwN0ZNmZyR2CBJuSdWHugScDgStxNObN5yItx4XZGCNNta
	SmsPV1nFqMr0sh7P70cTbwB2XmBXj0mIoSYedaNw4HDQyhYUB+0PaCx/7zOu1hu5GQ5
	bsNQ6C8kUnU+z5bdJJ3d2FfEArvAn+HROanXwL9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820b8db40c-92020c25-7a89-4ddd-87a6-fc16bbf721cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31a7cd6f62ff89b8f50ca2a1542e0f6fc9d576e483d0b0bb37327ce202a73814
Date: Sun, 17 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658051212
