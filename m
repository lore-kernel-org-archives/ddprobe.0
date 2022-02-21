Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96B95EBC
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645464385;
	h=To:Subject:From:Message-Id:Date;
	bh=n8gmVfuZuIAc9qh1WGzwH32ws306shhPVmEZhZp0258=;
	b=OfN/Rgvs89uagPhJaOu+lw7DzEZAf8Iit56YOnIwl5pqDkQ5Eiyl/v5bWPocV2fk
	Fu2zCWSxiFnfflVJWYnbiwpfAu+41xPiHOmQJrqS4nwYt8MnE948+bubwd07fca9BXn
	a6EDAHNcl21sv7xEoserZSdoNDO4W8OLU+OQo+KI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645464385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n8gmVfuZuIAc9qh1WGzwH32ws306shhPVmEZhZp0258=;
	b=jS0urVGy7GjqYqIugmJdh0pOaDbNS2OqcAR/pAKpArYyYux4xSPd1BhESxGLZF36
	Qh0dU9ww03ZMSmoU3fa1+obfhOYAN75qZK9KDqJuZzVn/E5+l5V3FxF9/MHer68FQ4C
	AnkDVmOG1RBiCwQBaI7DIatQIxM5Oy/jLgr2L3rA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d51f570-36a8feeb-3287-433e-b2cc-209cf7e5d9bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f34c139755b1a8a50bf698528a7e903303af8e90764345d1a9c96f9d4551fad
Date: Mon, 21 Feb 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645464384
