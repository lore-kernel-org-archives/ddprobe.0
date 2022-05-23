Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E607629
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 10:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653301319;
	h=To:Subject:From:Message-Id:Date;
	bh=0RPm4aPwBC6Vtv555VPzRJ580kULt/6G1bcwXVs5hDg=;
	b=K7gU17lUhWMszf1BTIt1gTY14nMLNqvRVfITXgIFOR6ZHO5Jo249Up9OyHh2h6/f
	p1712HcRJBmv9l65/npcS3ts0mGZ9nNGeLuGIxqtFjfvDMCrTfJJXYsP0PhMfVEUekL
	RY8DD5wVJ3yV4O4HEdLVVnuzxfmZJV4mo6YDG1Ys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653301319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0RPm4aPwBC6Vtv555VPzRJ580kULt/6G1bcwXVs5hDg=;
	b=HnUwEjIYWCEqJRZPRkug8j4odzrKViNdgJkIXhj2gTMq7kmn8UNS1pvEveCn+wlD
	PMHfZh3kL/izNVnLxqBeR8ExVqTLtTAsYi7VP0Qn+4xNOJrJjTdoBWuthfbZ3O1rCqO
	lFB5eG+7K7EUFRLzdEqsy1lz+0XRLogk9Y94a1Zg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f070165e-2f1e1816-9402-423c-b020-0a98946d11a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24731f85f29928ce2544e7587826bcb08bcfdf038e086a50701296c64447f94d
Date: Mon, 23 May 2022 10:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653301319
