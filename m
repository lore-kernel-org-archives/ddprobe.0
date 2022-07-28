Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3607A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659049852;
	h=To:Subject:From:Message-Id:Date;
	bh=f/eYmr3/lpMCvQ/dr1EPUisVR9SgmbSl7u7SfWeQNxM=;
	b=G4IdSdlClMYU4FwGw6Hyda985IgcFzQneR3JE34xCxXAfjOSuvfwlIgAZilDMx7V
	HYKeX3Mr+td91Gd7bInA9k16YYa9aNoGKWVkNf0ZLYFgETNXZsVn+t0HFVE1bsE3Vzl
	QhpLZusFJP7ogaAceSzbo5fta4Cc4WLaXXJ0Yhbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659049852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f/eYmr3/lpMCvQ/dr1EPUisVR9SgmbSl7u7SfWeQNxM=;
	b=bxcLMV/mN/FnytttDOpOv69Ibj0Jx/Vt865G6TPSuNsEwHYRJjkS7LMWdqu2qKsU
	6ggzmnC3Z3jCenTVVsB0mbMM+hHilYlt7Q/B9300rbiq/pEfcSAwGdahwnm97roJSqe
	pSMAIQaGTeGdSXr9rNZon0czIjm8YyxvvmsI076U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824713be94-c4b7cdd8-955a-452b-9123-9b7fa900a80f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 217c500476a97f454d21f5a8bc1fd6d11be16d5efe9ae73a6188cf26b626fee3
Date: Thu, 28 Jul 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659049852
