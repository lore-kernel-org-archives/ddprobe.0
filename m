Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3851376
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644917784;
	h=To:Subject:From:Message-Id:Date;
	bh=GmIobF1XAabmM4stvCirjTbWGVlqnp0j6oP+L0Bh94k=;
	b=KZucu9IQ8+2gaAsacT5ii8wtiRnBEG4Kwwc70R0kIpFUEinWLEJQ82tRBoITR3mX
	SYlTDBc5HjlqQevIwxAwjXDY1JrG6z9FeSQCY9nH8oz/JWVRnjecz4r2KJ16uShxFTm
	Tr7L42VP52Nq2OTBWsDHw1HfaS/2FEGHScibqTJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644917784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GmIobF1XAabmM4stvCirjTbWGVlqnp0j6oP+L0Bh94k=;
	b=ATlfrl5ZYVItA5ysnhjYNp54QOW3btCpL2R9JUisbvndcSIbukkaQ/iO0+8hoSkm
	grMJSA2eK8j2BZZjjneS7Mo3ZDYnFcpwtbVeDxlZaTYBCoLWTZCZwEjclvBp6CBaG0Q
	DFuj/OSCLlHQxNdV29DNQZftZp834+CGOZAaFxjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efcbd80e2-f340e58f-3f19-4c0d-85d1-c3c7e1575124-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f13fc552448d705b0e5c39a9354beea219696620f2db45b943bc79ee44ecf20f
Date: Tue, 15 Feb 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644917784
