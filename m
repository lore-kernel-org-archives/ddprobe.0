Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796E25ED6
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646250685;
	h=To:Subject:From:Message-Id:Date;
	bh=l6N4XUIcEHAmIFXeWKmVrtQdGCopth20Ft22cURoAEg=;
	b=G77ngBbdKSBVxq6FacNtai3DZObtkjuvAJEINLutNoqjgfY05iOs/hrk9dIBEM8k
	DhRDfBnRDI95C0tniBNY+5ZIzLWtLEoLyF6+Hlf7BgClZbdHvqp0Z/bsMPh3IEi4M+3
	++oCthx1X7P/XMypxGvGIp/KEX7Rjq6RuuX5vVZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646250685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l6N4XUIcEHAmIFXeWKmVrtQdGCopth20Ft22cURoAEg=;
	b=e0+54KtOl/i9Zn5zUoRPkIqqUmNQX7/Dh0sNQlM53JXmj6XPrdCB/9UyygQArSiD
	zqbCH3jbaYikb3z7S58JS92SOEpUrquPfFejeh9S+CoZHbHCqIB/RoqX2ZPbCUwO75q
	kriyCw4PXCP5gU75dHddeuaMKVHRkTvb/sEqbP+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c2ff1c0-4a03d93d-bc27-473f-837b-07fba5d440bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b37b2886f04c305da0647770463db69c9e6a208a0fdb49b8fb23e42bec10b0cb
Date: Wed, 2 Mar 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646250684
