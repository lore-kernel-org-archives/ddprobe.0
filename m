Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFBB2F5F
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660219852;
	h=To:Subject:From:Message-Id:Date;
	bh=Jn4lB/M41j+nlZIMCQhRcO5JPRVdDtlxIwg6pRJSr0s=;
	b=N/Ka3Ujl0aoxBGEo1IbFj4OPdb36bzL2hNPDGFm4MV/cn+cqAj/WmgAaLgSMyHcK
	UqI1YORLjuYdlDE5Glqnu0rgkUvRchbb7ME8jYfI1hdwcIs+cI6PkL093PYiToS2Vjp
	ts3K0Cq0WndT4qJ2wcgJkhXqcllS9m+f+RNotIfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660219852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jn4lB/M41j+nlZIMCQhRcO5JPRVdDtlxIwg6pRJSr0s=;
	b=JO8MQRHfRgUwXO8I2DAvjS/KjJMgyNp5fFc5rmeUQvYHAnl+1zrEiZ6wNWE0uSza
	KZRcf+0hT502k5Dusfrcb2jkc4ExF2uzfe6y+ie2tdL7VxCwRNFjCYa0CjqBxvB0CBX
	rTY5Xg0Mq61yHfvfInswrh6Ocsx6Bkw4Nz3r2J6Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828cd0871d-0e982645-8464-4d74-a336-4aa707da60b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ff332f4861c335a3a9506fed85f7ed6b59622894495f296e409d2523990684c
Date: Thu, 11 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660219852
