Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AF6180
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 08:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651653418;
	h=To:Subject:From:Message-Id:Date;
	bh=E6epLZnrd1a5Cfg6zmvF08+UkEL5mqVkBmpiMWgFcNk=;
	b=mboq0mvEoM37yYR55J3JqgpzppAhU3uyxDGazJJL9FSQ6onj86lDppoBXlcC49Or
	N3vhpA2qfmW5KylqMNP8ZMQH4ccRpksO/DzMzX7pMDv45p4ohwRR8+5uQkqfiCXGWVo
	vQJdjkXq98xtR9keqbQ/VkcsQHTt/IcKawZuZWPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651653418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E6epLZnrd1a5Cfg6zmvF08+UkEL5mqVkBmpiMWgFcNk=;
	b=aHtRjrOl6F9+wYZAwIauAeZUf+PH71hMuV69qCURn2iIeoVeIFDHX1VRGl7NKWL8
	c1ExqVaKKT7T4IrYn3q7vYBbk/IISco3S2XyaiM0U31dGeXanDiicE6QtSAasY13SNu
	PalbpXP2lrBndyO/j+89D7/QZ0UPjcXDfNPmi1p8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808e371cd4-ec7ac192-54a4-4348-9ec7-ce673095c3d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f8339c16ebcb5cb8bd8924d6746b9b4600e3935934ca1dba5cdf23714ebce92
Date: Wed, 4 May 2022 08:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651653418
