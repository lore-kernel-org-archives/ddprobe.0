Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CB57A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 03:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650858898;
	h=To:Subject:From:Message-Id:Date;
	bh=ZKDeJd392BLnmNj7azg0lFIy1Iyhie59GaKupUtdwsk=;
	b=GZWbEUicgMH4vwOur9KrlXuIUX1zECYeE3l0RoY32DY3uuWAxrio59+R1uWLRXmX
	72fBUyn4rgrQCHEp1a9ctp65JqjbvcyAmv4cnW6YAW+X4WWLtjUwrK9YSLvQ2zwjJoX
	iAETAY/um9Fi0/O6VqzaIeP/a1aGYOgQTdZyUpqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650858898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZKDeJd392BLnmNj7azg0lFIy1Iyhie59GaKupUtdwsk=;
	b=ThBBzNbZmpg9xjAM2b9X0fmCUbuTWPsFkxklxZbSt8cMtACuzCmaD8VKfNUhBxYv
	a/jA2K/3LFyY1CzqFFLgEIBg5byl/aM3kHYFteyaMTRXb5356Ly0IXeYJgMlW58zLOc
	LbFQMh0kNAidAaWMtUFyb1d2pSYxvVx5v2v9iOxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805edbb379-d0ad6c96-c09a-4e15-9fdc-b9da2c8a91aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a054e0e54887d7847fe3992f0f8af16384c4027a4a75c7fb4b8a1990c42faf98
Date: Mon, 25 Apr 2022 03:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650858898
