Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB267A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656476812;
	h=To:Subject:From:Message-Id:Date;
	bh=l/BN5K7iGfZnDCWHuQGMtaRFr7FIniITwbNyxzvzgEM=;
	b=e1w0+IqsYkAi8SNG9S2f7IdT71Aj2bXUJM1mGy82oE+3iP9d3KCHjki5SqOuLysW
	2/YA+KDlos6hnKQ9hh4Q7x/Tw/rmnhq6Bz2SGJaBtb6QqdnWziDTpF/nS4arIcRgY+b
	cPIdCKyEJNDvwGkF6QaW4IiZ7qOqm3ncclxHvcbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656476812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l/BN5K7iGfZnDCWHuQGMtaRFr7FIniITwbNyxzvzgEM=;
	b=ekyXh//azhV83y7sjSgOOKbNqt5ofl9nSiftWvGOMkCykl6+6dig9wnqhmBOMPPN
	2wdzuSa6WqR6emhJR9EyN6zzkLFIjUuiMcV0iCAwFC3IabEcykMLs7AK/Tql+luob8A
	C1jUFc4GWV/CqDC3n2MYhN9i3MhlWm744RfNqnMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181adb643ee-2b5372a4-c84a-4390-babf-235c2eeec9eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 734a7fa71ae9ed45802a2135d4fccd27c05237db9cd0ee6589c251bb5f3738fb
Date: Wed, 29 Jun 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656476812
