Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBDB5393
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645274184;
	h=To:Subject:From:Message-Id:Date;
	bh=LjsZlrv+Bi/Y1npVRkIpmdzTBu/uRc7y6kjSOBPm36s=;
	b=YpNI9oCozObJ7iQsgkEqvsuqfwlnXV/gt8dDmJy3LxTBKf8SKnUBNbT5sM49W3VX
	ILnfXcViICOLxjSmTPGQet50rYjFrBvDaFclymGnKaGExai1CaGmc5k/SIKVVovQKoP
	XMcKS1XtgdTYxzz6j7ddczheiwEhTzcEmYnCDKZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645274184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LjsZlrv+Bi/Y1npVRkIpmdzTBu/uRc7y6kjSOBPm36s=;
	b=de6rAML5h0o9h7x2+IW609fH6YQXBd2gaX0NhxqGUr8FfKo1C5Y518VdAuS7GALO
	bB0N7Vlwg5Qu/vOObcCuZjHZWUaBsopqwj6oOxnvOtJUymMKB4iYBwX9LMieihcJ8fS
	G8YbcmeGTDR8BOp4WB9hBb5+WBN0jCU7PGty10YQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11fbbc66-535d3dde-40e2-4238-9efb-1ec4152714d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af0f47c383dd0b7ad4e25532ae4b065ca976b9c39d4876b090266cfcf5d78341
Date: Sat, 19 Feb 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645274184
