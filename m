Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA77610F0
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 06:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650436319;
	h=To:Subject:From:Message-Id:Date;
	bh=9Dv3DhXzgpS4ZAN46CNZBL/Z7yXTfYdikJYY0Pm7Cho=;
	b=gdUE1ufy2INVH6HNngJLbLvrTYtZt31JiO8yxSQpB/PoRHiNQ0vRUDBvovB1dWFM
	oWtNkTwdoqmzDncQHsb7zXaq9qrwcnyNH1HDU2/pRK27xI4k94+iuFadt+f/mkj7p5x
	oo1cnBBkpd0dxIkzQPfZzw0yxDGpjye4tBhNn8JE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650436319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Dv3DhXzgpS4ZAN46CNZBL/Z7yXTfYdikJYY0Pm7Cho=;
	b=jvQVvMBHMrmQyVlrfefTji3XGTEZa4EidgCkCcd4XCobSTTbMdAnOCoOvTUDlCaQ
	HNoka9+c4w9EplSrEBJ97mHQMRuKtYY8mNnCikDxWd6CuqYATwrGLoFiX0a309ov5qu
	x06Y++tDVcjomgeHdUU8ndqu0lIdZGtXQYWjPL0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018045aba491-0561cc8d-d7bf-4696-8e66-f5755ed01159-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36a227b736f8cd645e3482e5c6b6466d86d393974b8293337c1b738f383648ce
Date: Wed, 20 Apr 2022 06:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650436318
