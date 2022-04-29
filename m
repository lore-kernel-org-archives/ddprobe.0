Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B731841
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 22:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651272478;
	h=To:Subject:From:Message-Id:Date;
	bh=4x6q8+14RcWJ0swWEgNjKu2BiKCLRcf6FySWmKlBtd4=;
	b=a83ZeaKXyK0ksLFKs3HaTJJjzq3m75d8CthAeNggL5EdIUvCfOp1P5x3glXbdbRN
	OxvHNBAAsUDGdnT27VMFejf4jiesKfiX6FRtlSw4qR1qckRZbHz+4sl7crO6FpWPOoM
	uMedb2MwKb5BqKPini7FxbK1vqDkkSDqFJIZMJes=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651272478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4x6q8+14RcWJ0swWEgNjKu2BiKCLRcf6FySWmKlBtd4=;
	b=PDdMMT7AeB8MJclH1dXH1nOAbvXRBogKkKYqPoZ7N/Weh7SbpezjKjM5ulkh2CLm
	AGomNuHJ1zi+Gb7A5IQXBq2TZKLky5jXMpC+N5YXly3VeIKcTexT1uWIIEpV2o8mgws
	UdeZ32M1FR2cRUlCsDZKXnh+UutkTpOsoBdMBrGA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018077826e5f-a97f76ba-8fd5-4eee-83ca-2f28dfdcda62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0631d57e74ffa78a81643dd57f88c12ef03fe2f7592442fa76dcfa0e9eb6af3
Date: Fri, 29 Apr 2022 22:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651272478
