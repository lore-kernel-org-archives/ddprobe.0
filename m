Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115B77B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 18:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649873158;
	h=To:Subject:From:Message-Id:Date;
	bh=drZzHTqjqpJMT/NMkSLIy+QuS+NaeRpWYcGBxvXMXbE=;
	b=bEOrWWI+GRddod0ANWgaOJOcZ4ntvZmXOyeFPQzMej7peSfOUodcwpxWSLNDNG/9
	7pMXvC+3xWjerdbl+fLGsQzjiabzncpaLR+quauL9yfDIAg2xZDUi5lG0lJtApWP6xt
	IsuXERmVVCSwK2oPtS9pogocXRnTwuaNLdiizUsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649873158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=drZzHTqjqpJMT/NMkSLIy+QuS+NaeRpWYcGBxvXMXbE=;
	b=com+A/8RQdnQ5FZY1SAs/50UxoMKPOgOig6MmN4ieKwy8hXbPFSXhUzumTIRm44z
	IKPddGWE7d4SxoMzgQRF85YnXKtlMGbzdd1p13yp4bi1yf/W1GHv2g1ZNva/s+9SaLm
	w+rNssE7ADyfgRdxbi6Ahp0s1mA5EUV3T9xESQq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180241a8093-375eb3be-aa2a-48b8-8916-649bd1c5f64e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e07fe62d576623e00182189a551bd3d7f76309793463a821670d017a1d6b887
Date: Wed, 13 Apr 2022 18:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649873158
