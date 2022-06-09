Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D417C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 06:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654756559;
	h=To:Subject:From:Message-Id:Date;
	bh=TwSKiJLBa4ryB6R5A/3hTHl/+gN/8fQR29WDr0ItWH0=;
	b=hMEyHOANLhMasVDJaSDSh3gE2NwI0LAm3ojcmPD4RkSaHBKAHOou/o13WNNZnJEi
	/I1nemJsS0mbPSLJH9lyeRRxOEtOKithU6UgVSmZ4NMDKFnu+8wFzmuJ1Fe+5Gt12cA
	Wd9n8uIhZNtVYT8VyWUEr9MX4VnwGTAGRI6TO0Y8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654756559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TwSKiJLBa4ryB6R5A/3hTHl/+gN/8fQR29WDr0ItWH0=;
	b=AalsBaV4zVq2W3ijzGP8FADfq66vnmNBIPJt8SD24Bi5KPMuMY/pBQV1JKxFsoG/
	Dl/2pMf9eyqzK1VvNV21fE9nMoq6UIxJkfTQB0LX2pIgfWKGnXzEuThwlmXx4wzXBv8
	i2IXhaoDkeLedBMpKkeiETrNQmX5YNZ+fo+6dbK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181472d4978-dda6d219-0ced-42d0-8046-90cb6ce7f407-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 390825e03987ed987edc97eaf4cd2b143bfdbd23e3434387ad4893f6af28b5a1
Date: Thu, 9 Jun 2022 06:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654756559
