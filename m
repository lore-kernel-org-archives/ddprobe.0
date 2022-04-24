Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CEB7A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 16:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650818458;
	h=To:Subject:From:Message-Id:Date;
	bh=8PeT6CDmuQF55WIqg9uDdtAE0FKj6Ec0xMY/VN9dTRo=;
	b=fdqqRYRQJkeWiJkz1V+XmdrVFJBZ1+P3MXpYTmdaxGnAboNv35mhG+PvjoPY8RFW
	UisvENqze+TD2oGpQfqkhMGJXrKVW8/k0TRGT2TGm4IqPulTWfgo2QXfWLoNV1M3ZWw
	shHFzXjnd8AsCWUDll1xduzNuKt1gK4DZ84NBvvc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650818458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8PeT6CDmuQF55WIqg9uDdtAE0FKj6Ec0xMY/VN9dTRo=;
	b=b5KVBAXQI1qlPygLoAhNhjxu3RZORY00WVHISzzdt0FzhnS2R7+nUjHUOHglpcXR
	uX5ZeUsvbyFGp4R/NuExchAlRTlMmQGtGbE3IWgetI8R87Fkv6VKwRi4O+SXBL1i14o
	9UgVgvApy0J7ZMarg5XAliI4KNFzJdDXl9PPE2o4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c72a2c1-4bb9a08d-1044-486b-993b-ce0b4ee0f4b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa070461f06d8d7dc68ce36b896368282ec05bb6e3f6bbd89ce8e5b38794e2a5
Date: Sun, 24 Apr 2022 16:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650818458
