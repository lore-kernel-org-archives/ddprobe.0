Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 909DA4373
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645122384;
	h=To:Subject:From:Message-Id:Date;
	bh=VeHDPZphRo0Onr+KGF6WDmed1TXUe8nCUCSCR4JCD9I=;
	b=ckyLNEEJpjvHZ0IChJH8RPVYZROMdINZM0OYK/PSoChpdSkh1deCt7/ad7cDuLC/
	AzEJf4zj6fqpq8hZ02YBdIAVtJp2nRgqUChyZDH3RbqtuVkO9R49shIPB5myEr8/JcF
	rJ3dP0+nbJqt+Y2FwWP28qK0mSiTgLXfkm9TWURM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645122384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VeHDPZphRo0Onr+KGF6WDmed1TXUe8nCUCSCR4JCD9I=;
	b=TrcuawfLK1F4eOMbqddwv/wJWP+9Iw68XiHoC/EQIh8UQ8ej7NbynwLqofIhfd0E
	x/D93n1G7h/yHZUAtSNb1Uf5JfsmW/ZEBCcW2p6N6vOb388RO7OqC0dKnhp8TbZjA8x
	H88OW92YJtWaKvnydBaycbPC+DSxb3gnElpk4N10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08ef7398-f21ca65b-6dd8-4fd7-b58f-273afa8ab065-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65474f2a53ebf4f9c225d04af2e95694b75d82b1ee651041d5960dd10c20e146
Date: Thu, 17 Feb 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645122384
