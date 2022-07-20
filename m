Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3B77475
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658351212;
	h=To:Subject:From:Message-Id:Date;
	bh=m5DgHDS4aUQaBRWIBGbByjRbR2FG2ZDattwn0K36190=;
	b=MaP9vHAZMbmt785Y6HUN6XwIlSJndha8EZHPrr7Wcth4Sijv/czzdhBJI9L7Cdxh
	AC1VAHt+FiAm2EyLCJ+qLvyv/mt309M5oqBbAFz86tTPGgr5ZiJtF8iI+nH7SxasQDH
	U1gMDqceTugyxDeV5HbzLyfpX86TZpFQ3rTX8y1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658351212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m5DgHDS4aUQaBRWIBGbByjRbR2FG2ZDattwn0K36190=;
	b=L4OdbXcZp/j8X/EUBHIaqz0v0KYZ7ZS9ynaeitaXHxh2JwiNwfQdGE6pXHhYDRfB
	Lv9BeyjFmMHbHLVUc8jzL6fIRZsknmJUIAq0RRGe9qRICihZ6kPukGI9oPu9Wlz8AhT
	uAC3TFhAObh1Nif/xbe90A++eCIqcNqojzTHY2+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d6f56fa-9abb56c7-f764-4911-84f2-6f71accb25e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da25553bdc52ef822276c6c18c40e98ea259c2b5e1f9c72c6e5b2c207359c908
Date: Wed, 20 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658351212
