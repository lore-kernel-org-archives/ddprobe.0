Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EC11FD2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646632884;
	h=To:Subject:From:Message-Id:Date;
	bh=BInYHxtzJqJ4zW211fpRCAiMF6vHRG+rI60d8ai065k=;
	b=B/47NCQiauZ2/CfxUlHxbt5RYVBEQv1B0eLwvcLopnk7SaoXKge4I0lHt69ws3AW
	kq18ADH2+96IxtX3ENwbibG+51dI7TAcuvRpFEfiILgLPrOnFF4ikI3DTCrHK4xQjsN
	mAyqpMQC9x4R0KKWKlUZsOecyp36x8ItL+CBzn3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646632884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BInYHxtzJqJ4zW211fpRCAiMF6vHRG+rI60d8ai065k=;
	b=XOoBIBjm7EqpFYsHWR8+5txt8K813X/b5lrAhgkenios3ulKqan5Mp0OqIlBD6Ek
	Vz0k+ldNUUKjHNnSOuxDIQVd1VtRDUg0VKEu/kKdGUQHIpPGJVedCqbIiVW0x4+ram3
	5qVVp85t84K/DW1rz5T+TAmcr1v9CXgk8V5ERLzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f62f7d9ff-f46e3b61-69da-4957-88a7-ff19d7336c16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e4d24ba19d28dd276d35960d2cdfc0b746f067fde8cbb279c5938184ff031b0
Date: Mon, 7 Mar 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646632884
