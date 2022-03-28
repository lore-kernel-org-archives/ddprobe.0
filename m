Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629AE7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 22:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648505578;
	h=To:Subject:From:Message-Id:Date;
	bh=6h0pvhdQXMqvXslm0uGOXSbdR96zaEv4fSXyjSEqkd0=;
	b=SQZI9WZWzepkaQdSyFw33aECHiqw/Rwq2r7oi/SHJvXwBRRBZ3FPrv+o5v+dVz1r
	gXPYXoFZl+IUsAEYQzBHUzP1alEzOU5uNv35UhRUfWfrhQudRNszEkdJoQ3jfiGe2Nj
	UhGSezTRmiWQxW4jomJcuY4+euNsEHXjaoP5uG6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648505578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6h0pvhdQXMqvXslm0uGOXSbdR96zaEv4fSXyjSEqkd0=;
	b=Ofj47Fz/yO5K8f+lSck+Dckd9iwea/zSzVse7qO2JJNBi3KRzi0KtyBDjeEP05eN
	r/5PdOy9q0kjN/4G1gtY2HYdnTXMMfX38IIb0vxW9Bp5RJfifGoQZKcrA8WmdDlf4Wj
	5MKtR2UeQl4/2xCBdOwGBW77SatHd0kYAO7rJYhY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd296e313-e4661e41-62fd-404a-ac81-a2db3a834287-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2bdd25435a247b34957a3f0fdcd8291e5dbecfa4a0bc920631174a5c4487fda
Date: Mon, 28 Mar 2022 22:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648505578
