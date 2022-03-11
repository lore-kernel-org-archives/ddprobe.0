Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656A27E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646959584;
	h=To:Subject:From:Message-Id:Date;
	bh=jxBXbENPsDYRVHpynPZQSFfAvnaO/xQ197y7eLpGhhc=;
	b=jnKTuBb05S8pgs0IQC64YjSFAj0BR7VTPS2pX+NXrWy4SRlEG+p9ww4N4BU3Oxyq
	f6a9zqjNVw/gYxB77h4YUfcIrtH8alGL2eLUEp5m3n0+R4TKnLugozmerP+Y6s9jXJo
	DDMe+5+rgVar0E5kGulQGmiCGYHlMIzK2Y8Ahw64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646959584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jxBXbENPsDYRVHpynPZQSFfAvnaO/xQ197y7eLpGhhc=;
	b=b5OnYiDyMwr9JzE7jPk1DtwNwfqpPOK4C0JYBZzbv/yv6XOmnFipC+He/CEbe7hE
	J3MjAcaP/EtnSaSSKVwJC1/h/0xLKH7oDdJqGw1Uk0BejCx9aCbaHO0WxlB8BW4lb8D
	GcrxwZxdahEWEHCHV2j0rDPmaY1ggeCELFz2kEjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7670e5fe-cd9aeef8-0b70-4295-b9ee-8c0757df03f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 834462b9a724e391131f33bef58d41432cbb258a6937673965cbcbc73939d6df
Date: Fri, 11 Mar 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646959584
