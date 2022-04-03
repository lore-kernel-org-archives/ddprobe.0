Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214D423B2
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 21:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649023078;
	h=To:Subject:From:Message-Id:Date;
	bh=hBvKGl5nzBhA+3wN3phQ7KZ/OpQlDfh9WP9Tvpp6IUU=;
	b=LW++zENmkZSwsUefitrE7lVl40Hw1aYY3ntIbzlda+SI12tGP/B9jeHcYHBy160n
	P8ijI0etlUAKjoL4klnqmGNdWDsN3k/lakpAqLLPhAuybdRykVrdnpu/kg93w/ZiCj+
	B5sV2Wt+qTlIaq9JYASgySfqzUVCXXW+iUksthv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649023078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hBvKGl5nzBhA+3wN3phQ7KZ/OpQlDfh9WP9Tvpp6IUU=;
	b=Tiu9rSQzdcUQop0OGLID8asGilZ4q8Ia+Vqajfw6V7pksEz6dVLNUHj6L6hoPCpa
	8rQGfLG42A/nwAKsyLChW5bjCc03CyCZNB41GEhaGIcbhsUL2+Wxy1W7gPpxJSq/Mn9
	npiO7JeWzBCfNYDEQTw8+V8XpI7Y0yPrDZb2LppY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff16f4f59-e6c94a08-9e49-4942-b434-80bf4153c153-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c32b15dacf186eb69b104a1bca214deaf1385ef6a04bfbde41f3078dfa85813c
Date: Sun, 3 Apr 2022 21:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649023078
