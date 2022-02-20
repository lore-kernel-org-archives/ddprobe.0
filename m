Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E1317E
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645335984;
	h=To:Subject:From:Message-Id:Date;
	bh=yR0Itv55/ZVOwYoxME/B3nKis0pmJeDrWjTDbOPTxTg=;
	b=UQgVRiXnNm1LvZH5RcPQ01RNklAOtprxzmC+Gd96ar1tqkAR19uWK2ff+I/3z+Ro
	IaN/PmQdsK5P/IwNWAmt3xAPhuFv+xO089p6DIfp6MHuxVLMlARSbzExTYbGBu3T6WM
	ayLUNw13e1M2tN8gpKyT93btba37OzPwJAl+ooS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645335984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yR0Itv55/ZVOwYoxME/B3nKis0pmJeDrWjTDbOPTxTg=;
	b=iK0e2sys3p2eVBXUWMk3PcsBB6VR7YzTrJrW5WdiwPsVcbY5n1lvURrA6E3Lu5X7
	SLrV5OGcW5kkA7Fi1Cmk/imkEfJYwU4fvucmjWdyY/bp3UREtS/JpujsfoaVtRk6rDj
	NRyK6MgoQr6MUqGPCiYZdqyexX797l+ccypN1MJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15aaba91-89feddae-3223-4a02-914c-cc1993e98e00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf82e5feca2a150c91a4927247e77505b5a31538e2c231a48d9ac2b330b55782
Date: Sun, 20 Feb 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645335984
