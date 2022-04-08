Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FE8367
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 03:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649388358;
	h=To:Subject:From:Message-Id:Date;
	bh=ghVXRl9VscRsw5wW7SCJqL2t5/hmbF2YiRdGEuqG5eE=;
	b=jvnEUZNjXY+a63FT7pVET+Zsr+MCpGsummE+OJyBHfkBFDHjZB8QMIvBbGfx1ggU
	4rJMgx0KlamtsligQ7tlqrpzIyutcXdc0d6pmotYX4IvNsEG2L8XjYpj6rI4vGNcFqr
	Nyhu4w/J8sDWxxQZTbQFCtxwqGpvMrD3KCmUvY1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649388358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ghVXRl9VscRsw5wW7SCJqL2t5/hmbF2YiRdGEuqG5eE=;
	b=kMMHDXnWKGSpCAVpH9lyOJiZgTflgYgO6YYk6mjfod0DbI0/6sJQ8/7WG5yfbGGd
	Af43VIXS2M2iAbPWGPkOeqXNb+Nh5JvPPiJ6D6HeNApVpTpBEk1SAXbJZB122t0m4gv
	K2SEATXA4BRuEGGTsvTM7gflx4COKPNVvaeXdV3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018007350aa8-36b16a10-9179-41ac-ae9a-18005b6ab022-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23533622b4a8d6e4bbe5cf76746831070b78764aa1e7c61c6b64bc541113cc09
Date: Fri, 8 Apr 2022 03:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649388358
