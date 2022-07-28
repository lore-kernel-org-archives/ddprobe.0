Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD9810E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658977252;
	h=To:Subject:From:Message-Id:Date;
	bh=er2XQnpZ0813jEAbtjr8MgvZmUc+lmv7lCKdQGiATiA=;
	b=cDNgD9F0uXXEHBt6PSgeXuUpYj2OKBfJoRd9IDs54s12hpegfGgHSWrdD9lpmytn
	IH1rDh5BuDwz1//b3Ri5+hFHOs56boSueBNQ3mlf0IOGWdOzlvFBjozK2zTds066NNy
	UHV1x0IwDdk7ytrKBVoyVeEfOwnZYZNCk0uUFK+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658977252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=er2XQnpZ0813jEAbtjr8MgvZmUc+lmv7lCKdQGiATiA=;
	b=gIFpn9NLKRsboY6s7A4NspHAE+JcH60k5//hrjUF7ktvWacv47+ghrLl112YM//A
	Bnh8a2iT8EXJ5Hq53Bwh9pMnyEwqi6s75VtRr4LjBC/bT+y7DCYvir1QVBf2fu1gYZp
	W1JnVdaWrxC+5jGh2Yk0eKJU8MFElsAw8+Do+bLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242bff4f9-1c11082e-786a-4540-89e8-67955c7d0c17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf128fe82ce87fa7c75785d60fa805b97108882cf787d6428533b904ad68eda5
Date: Thu, 28 Jul 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658977252
