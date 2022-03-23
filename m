Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1381378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648018285;
	h=To:Subject:From:Message-Id:Date;
	bh=gpB6IKpDqNeZeTXS6OcxWavB6JKHLCp829gYnUi3UuM=;
	b=WrdREa7Y0NPnCs7B7LbONKLxk5vWOTklMo3FvMpWjCQmQf4vWpeO+3/dCSe8x+qA
	DdRMmsBx6Yg4QfX0D3LJgE98lbqM9vbiCQhLIar3vrO+keCIXK2vf9uKmfM/6AL8q2R
	njgT0x7GX73CQZ/g9O2DB5fYK/302Eigl5DUR8uA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648018285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gpB6IKpDqNeZeTXS6OcxWavB6JKHLCp829gYnUi3UuM=;
	b=gaATOhIZYzlYFrADNE2BzXfnTNsrKEnchJ27ZwFO8kEgnsDdNGBBf62tL+KoCTj9
	Vi+Rf4Owo7AadzZNbmL+FAp48SY5nBkL6OkpdF3xWFoVHMOeVhmCsoLKva62X2QyUKY
	vu6pZ5iPzVqdeblUn/N6iOqiUMjp/v2r5Ue0/j48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb58b611c-2f9dcbbd-a668-4263-9507-dea36ef70f15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b72cd0ea18d4f85d6020454760d1f8089ba37a88487feaf46b7c1f9c145689b
Date: Wed, 23 Mar 2022 06:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648018284
