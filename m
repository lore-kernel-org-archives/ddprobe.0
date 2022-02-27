Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95AD02F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645943784;
	h=To:Subject:From:Message-Id:Date;
	bh=JCqP+ojEb3ccembMO9Uu5vsBH09cQXJl+LPb+xvgnz0=;
	b=Up/0en7lpX3QYuTHc2d8Y+AhpsvT6Gaa0+n31OW9cjupp4oKtc7jPUA1jna+e85k
	iage3iRv0ip127RsYScrU0e47xsfcCrqXtFofCxfZ2KtEbNzQ3Y08gxoI0xnF3mgxbm
	iI0UajNQZKLFwWVa5fV9NqNTMsDwtqgpwDTeOx7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645943784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JCqP+ojEb3ccembMO9Uu5vsBH09cQXJl+LPb+xvgnz0=;
	b=LzDeSG1h8UETIrAceOFM5HvlbGXmT92esx725AC79qvFpS+gQaOU0hQqwk1PCpab
	M+BtSRJqHJNYdRl+zpqqFmJYtzRccKQxnjb0dchPBu2iq14ZNcVlPJ3n2Y2xgvncXZU
	bT5xcmG9+/lWVFt+Nszfv0l+VGPYgeYeb1gpYYhQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39e50556-8756a027-2a0a-4060-bd58-6888788017ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04376dca6c114d410da853502ae6def256ae90c186877db5b3cbd4e1650cc7ad
Date: Sun, 27 Feb 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645943784
