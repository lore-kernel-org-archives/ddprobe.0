Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE8348CD
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645971384;
	h=To:Subject:From:Message-Id:Date;
	bh=FL/lMBuxT373Df7baosUeAp5KcYd6tIJfIjvV2F8tK4=;
	b=fEup5gSKzuq8WSW1ZthSntKtP6pmcgyO4xocLd2D8GHdfc8m5Y2Hqq2OwVfVkflZ
	Q0u3h/ZaI8L1uJlZSBy2LWLTVltbIvqrxwU+nUdyZ9R30Wl3X14Acyr7LxM990JfIw3
	MBtKhiy6Hs0P96w4H8qSMREwx/IGuR1EN7FPRmoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645971384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FL/lMBuxT373Df7baosUeAp5KcYd6tIJfIjvV2F8tK4=;
	b=CK8Xe0iZAigNSJTx0JmB+Xblu9m2Ibp3f+aJy+VwOWnjy0p9jY6BcmME8BaRjthZ
	+3ZN3C9xwdJgyVAe3QlRdPqioviIlOaZXaapaR6pEECZLsN/dq/c05FdR6LgjMvpw2q
	QQ1nXsBKX02QulfgDLhRxJQkyiEfT5WRk31mfVrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b8a29d0-fc3a4443-ee72-4961-8e5a-e673d80b36c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cd71dd655ebb35933b35fc6ffd1c7346ba633df683fdfbb4fbd97d7c13a5d3e
Date: Sun, 27 Feb 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645971384
