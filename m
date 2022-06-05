Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196164681
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 08:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654417499;
	h=To:Subject:From:Message-Id:Date;
	bh=OvXRe4eYcUMr6+xdJOJTCn7FAL5XrMAmJRTcJZrsz+Y=;
	b=KlrGYbO3zzFFniYm+xfV6aKSB1LEzrLehAMTo4RD6PEaYl9UcOpcEQCfBqZG8R4J
	1JS3kFv5kLGxcX1RLDwtKuPTONdzpiP1jeh0Dl0y3HisZ8WxS2rJPAePdMPS3KYIH+K
	s2n6roz1Bwdt4rcPJaJWz+PBZ/WeZ3X5N116HGnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654417499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OvXRe4eYcUMr6+xdJOJTCn7FAL5XrMAmJRTcJZrsz+Y=;
	b=AEdsLCjKgZ8pJx6ydi2PgeznRCWE8XpnPv2F8fcyebDHEOcd0kkf6WgyoyzvW2B0
	1tkqDiHUjnb6Yod8WXKB3UaCyoHGcTgfxBwmTy78bi4k/y2TnmZYDDO0mxu149w1gI0
	74/C+mU5m5gKzypSF0sZ63ck3LsMQUdOm7a1bufY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018132f7a490-ec23184f-d524-4877-afb1-67422b36bec1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ef1660d04e354ac89e59a0b8ba8993017475a22ec1126423d8c4bf3957ce55f
Date: Sun, 5 Jun 2022 08:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654417499
