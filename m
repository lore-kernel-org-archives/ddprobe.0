Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDA9367
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 02:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657161412;
	h=To:Subject:From:Message-Id:Date;
	bh=aLudyyTQQXlDVWFVbbOzBNUtGfy+h8qxLEfquxSfr2c=;
	b=jNo/jFe5m9t1Nd879NN1HdxWXpOa1Soxdhvyr3kVVkP3x5r0RAX/c1a/C/S9DXcf
	N6ycQdUzdSCnd+PZwuF7oZ9Xj/hil4nHE8nFPqp3qEvIpTShyWf03ZHGhKZR8Ue2nCO
	j4aiqm90yfJIjkyTyqqD+WUgrIonKiF/IXybesYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657161412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aLudyyTQQXlDVWFVbbOzBNUtGfy+h8qxLEfquxSfr2c=;
	b=A5h9H6Niepu5D474j8oNuDDDJdu++zbZSOBOoOqOG9kcTsJwfOUhKNkD/qyN/LCa
	tfdHsz3rLmzDhIorUmCJcHIyak2yetEwSYQRbc4HjWWmZeQz8+16Wk8vnv+xo85P74c
	8WAxj4W4/uMDOZj/encHvFGQJq18Wg+rLSiOWHEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d6846ef8-323a3970-fa44-4588-b2a2-53b3fb417b82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60a749134bac236270075f1478740f18d702c3b858394958cd1140f3adde53aa
Date: Thu, 7 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657161412
