Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C87520E7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660186852;
	h=To:Subject:From:Message-Id:Date;
	bh=UrdnvXMRnko2sh2AoVJqPlNFNhWZHjjkmpSGFSWM7yU=;
	b=TCTTZRHLqOXSTZ4zbBcc+D+T0B+HKylH2hmd1738F3Rky/lIZnDelHkzqsAGaCn1
	zjk14m9ZV2lPgN1QX7FOjMPu19KqhWgJnX3oiVwNurHXN5Uw3kWAWsEtdd7d6a6h+nJ
	bvoYbWsIo9f8KwLDhVWgMBfp/n8D4iOktpQojbSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660186852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UrdnvXMRnko2sh2AoVJqPlNFNhWZHjjkmpSGFSWM7yU=;
	b=KdJb/+QIHGLRYH6eGqsQnUvZ+/2G97DuyB4Jf5kG/LzQAja1LqgyZ5qWWpkJbjxV
	gLUranTUW7B76rjHZ3L6+2QgqnDqUafGGJAtAqccpVsexL/Go3swE9JozXVe6W6dLMd
	mC8oNGT2hFfelP3gBcydwmESp6VX7p073VDec+w4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828ad8fccf-7d3b8fb3-380e-45b9-b2c8-d0975bad3d13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e05b5862007653ca6216c09b4116b1cc19edba8df922dc642b4c83062f483ff4
Date: Thu, 11 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660186852
