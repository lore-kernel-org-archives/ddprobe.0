Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D3B7B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 11:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652183099;
	h=To:Subject:From:Message-Id:Date;
	bh=dsS10nIH3x8oo6CCmlsdMoYZqZXwz1/PH13ZnBSnn+I=;
	b=ATlKVVb/QklVOCgNnKVCysWO99xWT+ScAFb8QJWcMwxvchs7VLFbyzEvoKzJ3Pau
	evHJPrMAynikooS7/bErHW3Tc0PxaCHF7QvPhE4rFRuDHSwcblIffhKm9ad0gWhLC8a
	UbzG56E/jPGhng7tr1xY0FUbiruNN1t/btXh5p8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652183099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dsS10nIH3x8oo6CCmlsdMoYZqZXwz1/PH13ZnBSnn+I=;
	b=H623b2GOhqhlq8RN9T3Td6lYT5V0rI89hfa+Enmw2zQ2symX6xUVmUp9y3PzOhNs
	wWz2wtRCwKZeOPhEFqLkYybibDjPzv04ZkmjoR1+UdFLvNmpWsxrnErwMtGjo2klZDA
	qnDKLMCmT2Tyocl3k9fwK3z9Y8SVKW5zaMVvfw9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180adc9679b-c5ae4bac-b596-4bd6-92c8-98839e4263d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b333ff0b3eef086011ed1c37f96c0809ece795ca97c747e4513cc73f6c16ae6
Date: Tue, 10 May 2022 11:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652183099
