Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BCE1FA6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655992612;
	h=To:Subject:From:Message-Id:Date;
	bh=DizsF8nhx7THC4biw8RbXAFwXK75KSQpOw8ekdYYsgE=;
	b=Cdzi0bqn1kshEwcx4PhWrJV9MEJPPdi5ujXCIbJpgoSj69qFshT0j2Q8hXFfSj+M
	O4nGejCPYqUw5quwhVY0gT3Ey4e+79+NeY1NMEvenzAMusGFWgOSNawtAMqwFMIDSNR
	SgSfDwh/tvgsw8ETgMrTqCqx2fbUCiJamdB1LEvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655992612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DizsF8nhx7THC4biw8RbXAFwXK75KSQpOw8ekdYYsgE=;
	b=DG0NERmDLsRewIrONJUdfBJvFf25tNE8EKwuX85Hakhl/NfMT+kFzho5oJ6dR+Yc
	HmoCbl5iPyqLis3P+Tv+ssSVLKpcVLsDYoCsTJaSMZ/uKQ69A8znTOwh+7J+oLPraGT
	8Osetr5nDbwSzKdZRk/yCpL07OX0HDpctSmFXn4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018190d9f628-9c564a9e-cfbb-4397-88ec-f126084b61f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4a9b86a0ab8e976f2549616430d7c4ed4f623ebc930a16f5e7f8602d4a5a1ec
Date: Thu, 23 Jun 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655992612
