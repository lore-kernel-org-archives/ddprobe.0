Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655337C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656094612;
	h=To:Subject:From:Message-Id:Date;
	bh=rEV8fe+5CXNQbBlSKGHiQ7bXqG4uSf6xZanP6U9af2E=;
	b=gX8l9cX1FgdKNr31QqPH0vYnSw+fDdpUAh4iDY/DXBhhNPt8VxmKbIB9nf2/PX8J
	75DCC4hZhmbxrOI1k6uBS3uNYRBF/gAOrf2LUPmkLR0drMZuBwkDaMIxwHAqIl2lXAg
	qegUMmOAG4nOriNMbXmTOr+Db+GXVDM+6mCNTmfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656094612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rEV8fe+5CXNQbBlSKGHiQ7bXqG4uSf6xZanP6U9af2E=;
	b=UHPyPL+5M7d+Z9w+JGnUqr9Vp7IBajvoEOF41Q/nUjXt+Awb0tIeLqOjOH0baHpH
	NSk/k+NCECHDtOjl9smomfQd74vawSO7spxnfJj6FQro2Yzx60RgiI8X1wrVEzc/yxO
	BIOL2RWdrBHPl50L8PlDERSeahkZ9UJn0JtnIfIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196ee5b35-5964dc6f-66bc-4449-b1ad-096f9ca8d5f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8d43e096f1e72a1e4055bc39e6b105a6ef19044c4b845f3a3ddf00b776d0908
Date: Fri, 24 Jun 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656094612
