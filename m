Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 910874C9E
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646018784;
	h=To:Subject:From:Message-Id:Date;
	bh=f1n6de2UajFLq2CqRXn8IkXb4T3TRs6r0gzSxNnXaQg=;
	b=bM88td9v8V0IDaE1ovCILXKI4siSRQ4nRgWg4PJGSJXbmziGDpLjeY80e+xmOayd
	GU6DozPTd3nE+T+oq906mrytaf9DX9/WzcszzcxvpZjcVzWf+O22yrSKau1Xv9L1dj6
	3ZTDzZcaWHgEEeGSD/2cBAR6mbzSJ3xFlAtXsD4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646018784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f1n6de2UajFLq2CqRXn8IkXb4T3TRs6r0gzSxNnXaQg=;
	b=lrMXvgmWvciXqnJlCXSbsbpVGSWeMfp8sHYeKXytOu0tvTiOxxdi0c2C02sfhg9l
	cHJ4+fRwvwyvqQKxaXKmZf6FM2PyBxO/08Ls+kB6SM0qCHGVj8kQqAbVfGhLWsP79oT
	OPUZ2P+XXeTF7rKTbzii31q8U8EX2wIethTl6VGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e5d6dc2-8ecadd17-fff4-44bf-b24b-de184055ac3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98efaa70fa41eb19fa69f9b0b9ab2cc07605f4b012880618dc8d030ce0ccb9c3
Date: Mon, 28 Feb 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646018784
