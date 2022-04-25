Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BD77E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 18:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650911219;
	h=To:Subject:From:Message-Id:Date;
	bh=iBAuacycY/KKqdiS1Gd5d5VhUIn9u8N4gcKqYPrp+Tw=;
	b=dQrxzudI6sQjIVrgKr4LGWVZikPdadqU4tbjl7SVfyoA9vnQNZhmFY7EumVXtdcq
	BRPAKjg00iAVkxNjDf2GOvd96NkcUS1Rj7UcIt3qhO4+ezPhHKgu3OiY5g5zhDl6p2W
	pjA8WDclZTPfdYU7p9RPsYXP/IOt75rGdA+G05nE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650911218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iBAuacycY/KKqdiS1Gd5d5VhUIn9u8N4gcKqYPrp+Tw=;
	b=BL64Rd60fi1Q/G+nT7O1g8cTvxQq3nRW1xZaNEx/eV/6qtM4R7UTptoe60pLRYeH
	6SBeYOovvv9bUYT48PZnLWm52eqEKXLKjq50/jRMtQs485C5RBcZ1nmGeepn0dtLPfN
	a+7oN0grFgVybGO5XNJU6Mc/mTxAmf9abp56ajbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018061fa0a59-0177c2b9-8a01-4cb5-8dd4-22e948d6ee3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6be9e5594bba113da000c2c0ae5331fb46557f601abb8e0680833335f7b635e7
Date: Mon, 25 Apr 2022 18:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650911218
