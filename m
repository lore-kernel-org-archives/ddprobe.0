Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E32263E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647883884;
	h=To:Subject:From:Message-Id:Date;
	bh=sHfitU8dgFGuNH7Z5vPFnBM5Oz3qlNphhS+GLq9H7XU=;
	b=hvd9ksXUoDY+Hdz7ewYTETPtgSLwzrPnoPqnrYhqkcV/HCyu3W6P5egBg+9Tl5uX
	sziwb4fZYYJ2I2kjmq5BiaeqXEEx/mDuRtLb6wTssxctBjlP8fZNFzSHKGg1WzMhtNS
	/EmHi2pxv49kCATogJG6Qv89NutVbVE/osXUaScc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647883884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sHfitU8dgFGuNH7Z5vPFnBM5Oz3qlNphhS+GLq9H7XU=;
	b=BmzSDiUoOillKqs8i0aByT5KBZsrImORNYNiKPcSYCCghJoK+ndGVoyEF3oXIiin
	jt9lCWH9QmytOzpP2PhTcaVyNFvhkr27jO+hf5XBvDfoBKbB1IL1zE6iJVd3gD8grIA
	LZzPj2RGJ0S50ecKiZmQu3lVBCCanKi/wWgiVoKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad8898fb-1681d048-22cc-4226-af9b-b5d0b3bd9f53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a543e77ed26be6056a648ae312f07ec003740dda7b2d3672ac314663e5ed6760
Date: Mon, 21 Mar 2022 17:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647883884
