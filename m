Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8067239F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647088584;
	h=To:Subject:From:Message-Id:Date;
	bh=JMbaRuW/GZeoMuEDU9ANCSjQBAOs4BWVngF59nCj43w=;
	b=OVrn4qbi5alkD1ia1qCEZpeML+7qayHMYvBUnPJ75G6zSyIk7OiF02oy9vAvcdFf
	5fbj2PcwqOAgRAMcBk+Fi48cpuc0djn/ps7FBCgMX2ZM09jjDg0FAwahwDXu5qbY8oI
	Cu1mSJ1Lp2fruZz5+QP1tsjOhkRr1r6d/BxBdx9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647088584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JMbaRuW/GZeoMuEDU9ANCSjQBAOs4BWVngF59nCj43w=;
	b=I2yxqsRRE0SjQbSC3GNYpOml6A3eJriRGEflPu/mfXWFBiY79TsNod/Y5xBNwz4v
	rpSHKLNzUcqPKuTVBdf/gY9N+jXabnAv131xOKIY/H1fkbkHCh00ZIp2xarc7uXKZ/u
	VRj8y4uHA9Y/BuhZ+zj06gIKOp+1gcG8+DJe0GR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e214842-70b9b358-4ab9-48da-8cd2-145396753db6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 114f37e27c29910d267f3dea44652fe9759e56d916baf79bb53096a26bb10871
Date: Sat, 12 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647088584
