Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE3B7A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646067385;
	h=To:Subject:From:Message-Id:Date;
	bh=FC3nvpjnFXUpFCHYyVUN1YJpw4jsDH3fVziJrZ4IOjU=;
	b=ixiD0Mav565u3ea+Q4slwpbXKWkHTmO513hP0+KfItaFdBDbhHKdWtI8h0spvNje
	A5uThdDEk2nQ5JBofH5aGsmdr0quEOf6ZrL2imSz4YgwEYG0u2nJSzhfUxtMEnCr59Z
	ji9G4CH7UmgyekVq3hbIUp6zXC/4gfMaHBkTqqpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646067385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FC3nvpjnFXUpFCHYyVUN1YJpw4jsDH3fVziJrZ4IOjU=;
	b=JmplTNIGMYZeKN6WbDCe3waM31LM+syHcS2IaP13N7yfJ9UE7YG5TzL0XceCaM2A
	wDkYEFGat6cW/+Vst/E7sXUKN49+A0rKKMPOLRpreOA5BrspAUDhc1wdjizqfJR6j8c
	PJnMqSe1INdEUPjf73l+rLP/xViIehcbiWbJVntc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f414301ff-f24c933b-7070-484d-86ab-d71e8953a1f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d694fe13d3e86f7560487d909e8aec0b3f134320eed3aa92dd0a2af1bc559ad
Date: Mon, 28 Feb 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646067384
