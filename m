Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0CFE7C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 12:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648642018;
	h=To:Subject:From:Message-Id:Date;
	bh=HnjhIgXN5v9E21yibWWCfTOtOy3lFsDFcFO32IBN1RY=;
	b=Gc1ueSYoLJdWDyudTswkJwaU0q7lzwrmWLlamS6DDfy3Xtcek9Wtnwzk1o6lE4sl
	OQZ+G2/aGJw6jVXJJgF9gLonPeepG9WtVGdrwgTN6P0e6biomnFLcc1HS+ZlXuNH10p
	AopppQZI2jpijD/950Zl23KxRR99Y+o1pSXpx7qc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648642018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HnjhIgXN5v9E21yibWWCfTOtOy3lFsDFcFO32IBN1RY=;
	b=kcW8/DFxxJoZlqd5Z49KawJfu6u3DvvgUNk4HeHrSeGCcdsi2FElhK8WIE4PrfIw
	qpsD9jL+f4SHZ5gQOwITny8C2WTHSUpbfZNljbSHh3k3Y/cqqqdOTb+QDedjjG62O4R
	ABCcQWFs9CLTT3P1C6JJWMVCHNfkLwsBvqjrFM9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdab8cded-55c4372c-1cfa-4705-a9df-a5036514c905-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a66889bd0bf895f2ec5f4f7e4642ea57d5e91f00e1dd27f00587a7abd28fecc
Date: Wed, 30 Mar 2022 12:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648642018
