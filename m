Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D5815DA
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 03:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656993412;
	h=To:Subject:From:Message-Id:Date;
	bh=EvNXRvTdoSDKP/9kM0dFWdFs+sKOcFwCB+OrD8yHxZE=;
	b=JgeNZ/PrGqdtyl5zuoOfjvufkwE5kzf8fLt+lhFYIxFizbMWwcVU4cOyai+7u2f6
	WRVpU0yzgrF9BUbO3DbZXtMLPFXrw9ZvpiS7z8iNfADe5U0YA7vq3aRSIkzz4rXL+Or
	9roHijhaO+5XYQd5NgkhUak3wJhR/TbwOmm11YuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656993412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EvNXRvTdoSDKP/9kM0dFWdFs+sKOcFwCB+OrD8yHxZE=;
	b=EVbrR13viP084pR9A5lt8cHXH8crLrxprVmBVbeBa70qsMbu2TilZA3rJ/JnEswS
	2gw39ex9mfm3PvKUO1gV0bELEgXs7M8Xf537XJoinlCx/iTzKmeFuCQYaiEcJ9imXUP
	0KKeIlhmHeQ10qhxZv2mBBJ2D60e7paXSMT79Rbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc80f4b0-2900a36d-963c-4b70-8c27-5b62a4cafa03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6b4c2d3b27ae252dab5fac0adb47c6c55f97bf57f0343b1a38a0d2d7a9a3031
Date: Tue, 5 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656993412
