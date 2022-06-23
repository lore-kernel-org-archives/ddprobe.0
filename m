Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A291842
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 03:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655954219;
	h=To:Subject:From:Message-Id:Date;
	bh=bVO3A/FN6WbJZEx7RsrVpXacGqXv38K1PtP6fmqu7dQ=;
	b=Yv2a0Kler9aWiFawjHWrKoNtmiumS22enfNSoh7Rwd28X4yZMowHWZDr14jZr88T
	kdJ9dxLMVoLqw+OGbD0Mc+jGL4l3yE8IN8pO3uwxRieJnDQfE+IdTfWVe1ohE1QCEe3
	vZZmHM5ek5/Ak7mjhXWuyvzoWibzen4Ju5ZhRb/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655954219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bVO3A/FN6WbJZEx7RsrVpXacGqXv38K1PtP6fmqu7dQ=;
	b=NjkwDXhVY36p53ZtgWawXmxB+kzvYbLL1soz9rnXpTxJrGLzO7D8cfX6fCYXC3vm
	Vw+VND/Lqeq0MJ9CLl0ufjl1KAx3csFme/LAtI7YfYHpQEbQdegnTPLk3IMJTcuekRw
	Qrm2otizV87CbDPNv+mocG3hZBLGO+Jbp9CObHbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818e90211e-2a19d3b0-b45c-4655-bc54-697ca590b137-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d3bf779c5cf02531bb2949407f257597a74c16f33495bb05c36cbeaedf469a6
Date: Thu, 23 Jun 2022 03:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655954219
