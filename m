Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701C920E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645410384;
	h=To:Subject:From:Message-Id:Date;
	bh=MFodYKxHIVD9Pb/HbE7lpxkHFMm1Xi5gqnpW34pWduk=;
	b=BLpNiGAAlBEcvmrmp887SXfzJi61JxcYqn+jy4STkDbgL2vvHgsz7aYrFd+dIGb6
	9agZ/XTvzCdkKeCEmebvzuL4Cq0Z67H+pEuJeAD8ug/ItAEie6+il7n29Ua1O2zTHfD
	ViPhypH9UL2JU2sm62Vkn5WHFDKb3IN8XxCcTGVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645410384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MFodYKxHIVD9Pb/HbE7lpxkHFMm1Xi5gqnpW34pWduk=;
	b=FJzvn03VNsFuXkrV3bYd0cw6baV4Csx9xS708P2lDEp0HDUS5XmNdL7phAtoGiGo
	hg7B2APXc8WPohZBWPbs2oT4OUgbcy4+N7rnCf903/yN7iYzn9NRt1/tB0IFhNBn+kh
	SEfO1HKExS0zpe1kIBA7rhDxVmQ6926lT9h930sQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a19fba9-0bb4c7d7-987c-429f-a1da-fe21f902bc21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e44f4186a39a96f422fe5bc69b97b4700631b16720fd3f67a5d3735dfe06893
Date: Mon, 21 Feb 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645410384
