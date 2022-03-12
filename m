Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A425C361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647102085;
	h=To:Subject:From:Message-Id:Date;
	bh=2A0vfLvqZIRjNzEUlKGkPWzj86g+RJeXiO1yjwnN1T8=;
	b=PaEmXCGZ+/5xrqua2jFA5IzGS49vonAz8lzTKqFjo9c3tj3++z/Dtbbn42mjN6fM
	ncH0IRUof6FOIrXe1YYl2kHU7CmSmDoqRkpgDhkHfzE6LnCGoAtCbIh2TGrY/CHdSDT
	5HrvBsMpXpqGCBUvgd0pPrCo61MslAC5+uGUgua4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647102085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2A0vfLvqZIRjNzEUlKGkPWzj86g+RJeXiO1yjwnN1T8=;
	b=bpnEVlKdaNfCFp5C5HYDcHvFVdnjCgoyshzIGD19y7Xe7dDetKszoxcb8VoUpQWO
	TT1IDdwctpECAyOb+L/+WYoaQga9hLHBSOh7E8XAV0zjzjNmdu9rZZ2g5cG7ClmzQCg
	7SYJABnMcUebcLHjYBPdCesIKyzOYsTij81AuLFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7eef4768-4629281b-df85-4db5-a5be-be5ec56b6ea9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bef7c6ae3dd67a9e22ad553a9f4f7b9307fd1a78ce2c7348c9e77f00dcb898f
Date: Sat, 12 Mar 2022 16:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647102084
