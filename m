Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BDB97A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659882652;
	h=To:Subject:From:Message-Id:Date;
	bh=DiCSt4MpAqHKVXgfd44lwk8AA9F/URW1yr7c1SDjLp0=;
	b=WNFnVPRBpfATjkRmnUGElQy0vLv751lxz1fHG52HP+FiJIrMAn+4hUaoa3IrOK1v
	iIbClQx/NADQMiv9HJs5YRo2mSLD/+Nan5M4Unzpd2FUiNSL14FCFobYNzBgRMZN7pS
	ErY5dn1A4dxxLZzsOI/OvcHGtw9qkYaCAJmm8/UY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659882652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DiCSt4MpAqHKVXgfd44lwk8AA9F/URW1yr7c1SDjLp0=;
	b=T9/UgGlsfPayreZB6KzGtNxmHu5S3bHQUcMiMbWy7EdXYYt5D8ruShkgQPxNz3YL
	zGV7oE8pktCTEAJy7Kb1wQrlpQPnwXJEiCcvICz7trp1/L3fZuz9tEwADigvK0Q5I5u
	+0/nrgxJik4V8eqv1gKV8z2RDBbroDssYPgWXNwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018278b743b5-ef498071-18b5-4948-987e-4b1a45f8650b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 465770c02b016857312e5fce444e6774da8f89b2e9e31f2dda24fbdb0ea5d50a
Date: Sun, 7 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659882652
