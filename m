Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027017F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 08:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655453399;
	h=To:Subject:From:Message-Id:Date;
	bh=/13/IYUXgZGosxcyoSskiR2yoHRHiPDe47UObeue1yQ=;
	b=h/JgYJuFT3zuQZaOiCmprNEgtNX+mXPa6b7OvrVSz6dmKKK2MhuCVkPvOvcwzOtb
	V/O1ucj4qayZ3mfA8tROC7ARQgMNqGtAM8NnGhdeNPH1H9+ZpzOLXRorW6k7+jqcSX9
	rJ15+SPFb7Sz721/9DmP8/w3ZzeihNiuQas0rLPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655453399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/13/IYUXgZGosxcyoSskiR2yoHRHiPDe47UObeue1yQ=;
	b=T7H2op6Rbm4ixXe/QwgFiST8P2Fj9M2RmALeMPR+Qs3ff6Cvmi/EBF/snOjNEFLx
	3tWXxAbAGu1Zx58jBTHm76E0juZDUeZKamLLyfAtH7wDJljTXjCi2JY84ZCjJqObnIF
	+SdneQHTtNyes5frJNGBWq46j5rE5AVQ6h/iw/lE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018170b638f5-9fe630cc-550d-4f31-a54c-866b9913dc0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0d933211ba987b74f6dee0a0c2624e3d4f6c190a825707c228bea65f2af70ab
Date: Fri, 17 Jun 2022 08:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655453399
