Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FA47B
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 09:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649929078;
	h=To:Subject:From:Message-Id:Date;
	bh=d5fOA3HfsLrEYvZu9+3SsykuKf2ADTxF/VkyYzQ4i3Q=;
	b=e9gJ2Cd6laZ0/Rsm4gpNA12TASrrXruxfYZSKjoHZaXDVYhC8dqJA8WmGwx9k3ug
	v04PnaGAJrox1cUdyjkXAkzIrLksYaFjjHhhNnLkqLjy7A1cYFVSZqA11QQBekLXaM/
	di0e2/y00RGBw93vnW3NNZKWT+A3u3Ls9AHdhpdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649929078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d5fOA3HfsLrEYvZu9+3SsykuKf2ADTxF/VkyYzQ4i3Q=;
	b=Ecnwm8Q0Dqg9mIkisEh95IzPGowYr1memv1MILi9DRnjKErCHOOxNBIWuYgWEJHa
	rBp+28LmNt3XkKtqSJl/KgdD7U1LiMj1vvK6DFjKX3MZpYE0S8X5FXb0oA3ZyvVXt1G
	K6TMTai4hc1T5YTsN4rlBXbuAmVMK9JioeiimnPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180276fc5df-1377fe2e-42fd-49c8-8655-bd99a19a7805-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a46e5a13702f0b171f92606596ef7da2a02d0cca307ddaf4bc5cc5a75719e8a3
Date: Thu, 14 Apr 2022 09:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649929078
