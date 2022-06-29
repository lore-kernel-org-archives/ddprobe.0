Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E240033CE
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656515212;
	h=To:Subject:From:Message-Id:Date;
	bh=QE+jUg6ul+Hsw+nrncQPKV7adkiQjgYsoJErXsVM8Vg=;
	b=DJLupaucYBluVZi0kjNajjnCoqJ04sBtSiEE1YWcm3NSJLTwprYXoAH0GQwCxwOL
	8PfEuwzx0r8j6ij1N+BQBI7f9BPw0hx1xPHoNPxPvGJbyslwXC1h+XfwUAEhMRnwHvO
	DQq/EhQOgagq82WWai/uOMIzr5qeUVKVFg7TUECE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656515212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QE+jUg6ul+Hsw+nrncQPKV7adkiQjgYsoJErXsVM8Vg=;
	b=E4fnNKEsesWwTAZXMD1pSzHztnjaxH3UXbV4t71bBFHgVIODztisIijR9oy6JTph
	BXMnMTXajERLvBtPRPwZk0q2z/NNh24YvWqZ9vwG4OqjKMdevAwXMdhhiXX9oBYn7DH
	tyVcjHrXm4aRw5EMLFlxlYA+lPz7qKXYj3a4UtUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b000340f-ff9e8671-199f-4fcf-88cb-75527b97e18a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 128d249fb3621ad39016a2446bc5b0dfb06e780b4699e99e9b38ddc42284fed4
Date: Wed, 29 Jun 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656515212
