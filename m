Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2259020FA
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658010412;
	h=To:Subject:From:Message-Id:Date;
	bh=6INyvH81XpodzFuePSsDBjRXRqZ8DOGO0pwZITIFAZk=;
	b=dEg07jUthEmipF8J21k/VyxZwSCCBvMfjdfHsVwDRmOin4Q4XhjQy3xUha8VZWq4
	auOomIWn96olBZcm1eYS11g1geFEGSh+EXMD7x/DWPkTK4CPU/xRxS1pc/iqM8VzWNb
	u6e9eXsHs0rfcyNTzQrdjyNNnbqgKFDIDLQ8W3a8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658010412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6INyvH81XpodzFuePSsDBjRXRqZ8DOGO0pwZITIFAZk=;
	b=ba8mMPzehNiIPWjRkkt8jKkfRtGv1sYrLAAUZsFHFOxx0NVGt4d8+yf3U3ifUr9h
	WW4d6znGe63Z6oOwY10z5/OcQ6pz5U4i1cqEjOAKDvm3swd9GTQdKoJqbESyAtinqYz
	ydBCcvBsDMhQQDqiEo/Y74Ro6yNYhe0MyaoK4gnQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182091f251d-0f191e88-7b13-4513-8243-23dad653b54c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcd3e5780756f52f555ffa32f8292dae6eea91a89626739cd1ef2e11f480128f
Date: Sat, 16 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658010412
