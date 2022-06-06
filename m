Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ABC7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 19:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654544579;
	h=To:Subject:From:Message-Id:Date;
	bh=vdzQKtRgI2y82cl7s5VZ6w6TGbZ8GSfACIgU0O1Qw44=;
	b=C1ktheVwXwmCeAPFmTx1odh0otVgoidOY65iRNwIlkdrUtoEGMpcNsFCzIWjyUby
	vwsxbJU3ImNyM03tf9MqkShBd+zLuFPJOfrV71NG24EApXkJzIttrwMtpffHhOhQwOU
	6suDYPKmmRhqan6dlQOtMS0ED9j4S2vR/sEcBZgE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654544579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vdzQKtRgI2y82cl7s5VZ6w6TGbZ8GSfACIgU0O1Qw44=;
	b=aK+EV/Q8tJpgkn2fSKqmQZaU8OP5aCgJQNfXvCcoKPqrzrSHvGyqaJkq1iWzEhgW
	uloaNLjpUYSHonFEGTNjVOzlshaMqJWSnMt+V6KZAsNFmPPyz2kYHoNGqMkXYHaNwZY
	KGKJApoH2cKYNZISET7jL8GnE6DDvsS5v6LG0hdw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813a8abb07-8be8c8f3-caf0-4ce4-b88d-b7414bc0395e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07c21decb3039827c65ec636f5bd14900a01a943d9987816de34ac6eb3c91b58
Date: Mon, 6 Jun 2022 19:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654544579
