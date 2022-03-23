Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60E8A40
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 04:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648009885;
	h=To:Subject:From:Message-Id:Date;
	bh=UYwYT1XBzdEJ20qfTv7EP74nO2y3wfeseU9aaCXhb24=;
	b=VNaiXVWQsRqsreMBwj5NGYrgY8tIaF7Lzo9sZMuqKQV8kr+ABgRdyjNZ28K1DB8s
	c/EDxo/V5fBfIaY/onn2PcZCutFAS0oJ8zmd/iAy9i44hTKBZq4X5itsNJkjZNiwaQT
	SNQg65wffIicl/MWKjIbZT9Ehq3ryoIcZUnzjYqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648009885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UYwYT1XBzdEJ20qfTv7EP74nO2y3wfeseU9aaCXhb24=;
	b=cWkxjyV2rUaRQXpaEAB27u9bxD3vrN3k0mDkjqWya6kJtlrs89r9q83YZkrbHM4B
	efwZHmZE6QpzbmTvus+H8tO3FxzsNXC1BzdKG7ukNeYDqgyKsijRufXHJLZ9b8obwq5
	vkrxuB66pr3DXXqskoT7fmGfm1w5DggXnYL5JIAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb50b3470-3685c2cc-3d1c-40d0-bf04-abbd120ac192-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 636e85e522fd52d4d1122d9d2c69c07d8140983e8176f514c781f9ef764a40be
Date: Wed, 23 Mar 2022 04:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648009884
