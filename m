Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BCD33E9
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 21:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650836218;
	h=To:Subject:From:Message-Id:Date;
	bh=zhdeiXJ2mj/wPlr4KuFNhwDho4JNUvuCQpRhVgXXb4U=;
	b=Ixq6pZZHwVCx1iFTNkZen4uIV6dzt3QlyoSRf7NcB794kCCd3qwUyHubbYSMdAZI
	mtMWN4wKNXAZbE5tgtf/dSgcPrfhqg07PemqRQSqjgPLQdm1uJN4uebhoPAeP1tvzS1
	hoxvCdDndIn0oLSrj3kO/s80MSPCHLLu39pzYJ5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650836218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zhdeiXJ2mj/wPlr4KuFNhwDho4JNUvuCQpRhVgXXb4U=;
	b=EiOscY0OeduCzi5EvIZG0VAE1XCpn3Rt2lM7UJ25LBKe7owgdCqRiK+8pK8m3y/u
	G5pF2HJojRLkRTTG3uiEtyQfxpzTQABYViRGu+/9PR65vrGSLrJPxBWvCkvCxsMXvXh
	szdbEHcig+6EMxe1KMM8PMm9ZGO9lAXqAMzpHvKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d81a1cb-0a7e40c8-6251-44c3-81cf-86b80fec514f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2db281cf017c40bf570b1b95cd67e082db80673c998e118c1505075e6d2663f7
Date: Sun, 24 Apr 2022 21:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650836218
