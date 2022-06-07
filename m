Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9D77C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 13:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654610279;
	h=To:Subject:From:Message-Id:Date;
	bh=qYn1Xa/YTbCBZWoKiY8wWUdRan09BohDAyrA60QRS3c=;
	b=SmjRV3d18zF7WKB+4uXzfx4QX3wkbrThRNnqnivwP0wV+7y4Rze1EQToEJjnfIjG
	I1CfwWxZbdyMmZyBqZJ0aZKOXIPNCrrKnuzorxx20SpwiI4UF/7sFau3BgCTwxpKLy+
	kuj2KFjThFG77r2xXP4hUpaMZJI55MKd+Q8g7s+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654610279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qYn1Xa/YTbCBZWoKiY8wWUdRan09BohDAyrA60QRS3c=;
	b=LIlFXhKYPDEad39eReTmqV8+TscM5JCFiFw5ujuk0p13x1Y+lcx4pvRkNvxtKo/c
	iYtUKlE8wOp8UPD4OwP3bXtqXc4orAYec8N9R9CL9mg/uE7PR9pNTkOAmDKyIwN41on
	5ChZDf1lGfhgidZXhJuXXWY5SWpbC9z3ghor5R/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e753b61-bfc01c59-ff97-4ee3-af1c-01d2eb50dc5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af240ea9d5ee8f3712825ccbf7ae4a704c7c4ff27a55a18505fb5610b30bb9ff
Date: Tue, 7 Jun 2022 13:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654610279
