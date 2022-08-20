Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC0A2F56
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661019653;
	h=To:Subject:From:Message-Id:Date;
	bh=vYU0HxwvxKcPRmLXqJ/uTGslGxid5Udo2JalhKL2gRM=;
	b=g9IpvkHMdqC6Yp8RpvoITfF+qeS5EbAQngY19HQP98tECHm8xg3hplnvpQ0YIZIw
	VVxTSVSU6+xJwUXKDu9rTT7zz0/kRlBuyVTVGiy1NqpGiBH2e0E9gN/zEitXQB73umn
	W02izh4CKuuO8PfbZ7zvRpaaKJ5lIkBZqC5kmR4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661019653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vYU0HxwvxKcPRmLXqJ/uTGslGxid5Udo2JalhKL2gRM=;
	b=ObwlX+wRFnh3m7pHgqt59hFwZaK82+5VXJp8EqzswEckYZRoeN5DnEJaONRsEO6k
	RbmQVN73o87Dew+feU0n6B/qoNvQ2PGACB6aDKgMkbBekUCJWEKY3PcAHmK4IAcQM81
	32bEeWKNz543BIY9cdumb5uzNcgv8fS7MC3+qLn0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc7c81c6-a06f0fe3-eaaf-496e-a10b-cb03dbc7c9b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e33a01d4bcf01db7a33db79a2339849adc72c6fda7d4299e9b9ebc128da853f8
Date: Sat, 20 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661019652
