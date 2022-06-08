Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F01117D4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 06:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654669259;
	h=To:Subject:From:Message-Id:Date;
	bh=IZUurSBgDD+7rRKdRdJjF6VVVIFwycpnbMWiQ7ug3Hk=;
	b=PJzmmX6uU2vPRObn+XejiaTYwhKTGm4YH9BeItuBf/FUUQCsp7yB2CZpRJ7WPMQK
	UNwzHWcqyaStdBIK0vHimiWHDpV2HBnqXS6TAHz1k4izr1w+szZXV2lZFMOkrrNYY/m
	VdRAXQ1i1gJrJQH0whbZK334DoQwXKWZvdfFZkgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654669259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IZUurSBgDD+7rRKdRdJjF6VVVIFwycpnbMWiQ7ug3Hk=;
	b=FGVXrbkji3iD4p5usNRAyKj8yn+02pTJnP2QW7PbxxVQSnCWNam4qXP9CrJmIdXH
	qea2vyWbEXFIq6+21U2r8599xS/xnEPB7Yr+Q7o495oIZFLFRxTEeIdND6LattA9prP
	EwH5C2xuoXf+POU2zuoGh+/NHYrVMTLxcPHw6E4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018141f93262-35346087-60e3-49d3-a11c-db88cfa2461e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19ddd844bf3111be7f3f07c0ca91ec59a548f0c9a596ed75ae52533980010101
Date: Wed, 8 Jun 2022 06:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654669259
