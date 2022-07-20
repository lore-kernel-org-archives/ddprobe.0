Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BCD7487
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658356012;
	h=To:Subject:From:Message-Id:Date;
	bh=u8Z6cb94tW07eRa38DSePFrhzUoUOmFhidSCz0kxZJc=;
	b=X+uyDGPstGtoUhlqw/b5RNMm/u4xv0Id6ZFgV3pitR+qNeW4lF5bnSn1GGIknw2t
	OrHK28+WROlJZZie1+SBjwQgt+nKTpEjBv/YgL+u5rhHs8L7RTasfOIuwREFac6iWBW
	apTcF5ewpTNEIXHQIVV1jxIUoxro2Y34trsiNXmU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658356012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u8Z6cb94tW07eRa38DSePFrhzUoUOmFhidSCz0kxZJc=;
	b=PlE8xRN1Bi2/6q1F80b/vfyiQLhqaXuzn1gIy76cwvAgnX0g5P6dygqaCxtD28V0
	5J4rS7MfqGPoURbPkOYDPGSICxwnY3e7MBmSD9BuBGf+2Ua/6vx/gOdJvu15sNqVcg3
	DzDwnpPCuY2g/Hs3qSFVKrucZRysrfZ64duLTHS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821db89560-86b55abc-3a35-4dfe-be9a-4293789c7931-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17364a778d780e7679370f32a72a37946ab97f031e7022e60a2ff76459ec6a30
Date: Wed, 20 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658356012
