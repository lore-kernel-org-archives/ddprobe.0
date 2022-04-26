Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDB37E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 00:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650933778;
	h=To:Subject:From:Message-Id:Date;
	bh=aVxPrmQvJHa8uGZa0nD3ZH0U8FJKEMw4yOdpm42v+Rg=;
	b=K2DvyYnPTJk1SAz55eGJes59GBVMFgAXb4tbyeF6tPjKUWzbv9KklK1dU68dwgci
	1QQdsyta4486YI4rdDySplE0US3OmdXCqv7CITdi1oNfwLV6/UT0iSp5jgVzAXTdPNQ
	xDxog3oFHdjTXZSryMETQh6vkYSJptK8MU3iHjgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650933778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aVxPrmQvJHa8uGZa0nD3ZH0U8FJKEMw4yOdpm42v+Rg=;
	b=P0PLsIrQ8s3LLfs4D1XLQQuIWyk6dZAQ6Md7ThOyjMEPHKIt1BXj+ZAt4IBIRWut
	bBLF2PMs+UMCJCnQD0uHvXSPKb40ky48pJBJ2JkjtvrL5blkY7YTvfbEkfu2TlLlSTd
	Y7JKLu/whdXwvgIwXYqY1bdZ95njk+Wyc3rPVZds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180635247b4-4c4225b6-96e4-43d1-8461-b9c09070735e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71d71439e7ce5f4c3513b882746b0969b0dbfbc8ff39bd371c891a514d712ab7
Date: Tue, 26 Apr 2022 00:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650933778
