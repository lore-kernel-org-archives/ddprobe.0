Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D11468F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 03:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654399379;
	h=To:Subject:From:Message-Id:Date;
	bh=gf79qo+elee72s+ZDDEMyhiDCdAf6rR3OsbV+jU828U=;
	b=iYB0ewzg+WCFu9VvHQB+JVHpLnZ8LlYvQH6Of6MMFY8YWmqqPJ3ifXR5iUnHgTAL
	9rwIcqfQB3A1yfm5N9+7s4fGcbEN9xE5A4fG7MjKQQk+blDUwYHj7ny4Q6cc6MSj9Pb
	PkFbUaG7LfrTj3GH0VJgJ/xLIgd0byIxUriC8ftQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654399379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gf79qo+elee72s+ZDDEMyhiDCdAf6rR3OsbV+jU828U=;
	b=h1IIK0nyr2kmjSMSkDLLVvlmeY0+BoNcwgnWk4D1FB/qouA3xXrww1bnw8rxdTu8
	bhFyS44+bOctHF835TkDtTK9HOhHOhWWrfUIh1+rSpzGhbkHqiBxntkc9dyCrS0sD9J
	mh9HYEUkxtD0lPaB64kpnhZmBRs8pIVjNNhur9V4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018131e3275d-b509cbfb-ae30-4c4b-963e-6987e6bb0c40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3db8f1d9312604e6805dcb9d54793083a406894a3c064fd9285f13609a6a6aa3
Date: Sun, 5 Jun 2022 03:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654399379
