Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AAD36F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 22:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647903384;
	h=To:Subject:From:Message-Id:Date;
	bh=goEfHe3949tBPrGMtVUdtCJ+iGSNWsQAUlraqNZQirY=;
	b=VdkyLNwHa5QzsPaAf4L/VJItjhIwtC1/GrJs/ouQN4x0FPSMWUHvG1c57b8Sm/Em
	d6v8AiltVGY/2OPP58WE0s1W6JH5EbKToqtdj3csxaXaTuhjTvGKM8W/zXhR8XePCBH
	+R8dskujxGVNruCoG1ZaI4eLcYJA9iGablVJBB58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647903384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=goEfHe3949tBPrGMtVUdtCJ+iGSNWsQAUlraqNZQirY=;
	b=ShMLFZP70zSi+dEcEyQiRqRvu8umkkQnrzIpMF0xSSsUNYAT42C6wgIeeYj4lQt4
	S1OgHPn58QE2NqrMIr8dr6EEiZsiFppAIuY2smuQvozUvmtVXQZG/8LKHpp+NwHkniQ
	t6shunMMBzp1B6wmDChHH2dZTSh8U5gpo0ijQaz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faeb224b4-4e2515f0-b3e5-42d9-b968-fec9b9b9f452-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb10efdb19e801d02ed1d341e3c891752f3b874d27edc8eaa258577d8115290d
Date: Mon, 21 Mar 2022 22:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647903384
