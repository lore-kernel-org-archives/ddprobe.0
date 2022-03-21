Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C9236F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647904285;
	h=To:Subject:From:Message-Id:Date;
	bh=oNfX4X5f/Riz6xI8rKSIxiqE/jcxujGl0Rl0V00dtAg=;
	b=h694u6uss26P0dAt2L/RJeP3jjg77FdufYl0iIikTr9FE/beU3Mbjph0alqnBH0l
	51bx+8sXQ5MsYy+eXNBn+Rwi02S9Oss3J+dB5KzkDkD2hUDHzFWp2KyCM5JMc/zRiam
	LtuyQnOFoI629hYkUSmi6NBm6WLgqdxoQtQXohaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647904285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oNfX4X5f/Riz6xI8rKSIxiqE/jcxujGl0Rl0V00dtAg=;
	b=OIYXKELhIbiZU92MJEurlIbob8jnHi8rqY18xnUKyr5aIcbAd/V3uJ+a4tziAxNi
	ra2UJXIzz5+6jiKq676XNRhtFvKHpLsPMsDKio+GqS9dNfej84NMoaXFz68gbwc6ibS
	Ex2JumKa1FY/hPUbjeQ2AbEo8Mn9HXaFGp4bZwbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faebfe086-707e6a8d-2b37-4927-acf5-16d3349337eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10fcaa461344827e4acf1f4eaa039177cc14ef6c9b957422fc6a4007ab428b59
Date: Mon, 21 Mar 2022 23:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647904284
