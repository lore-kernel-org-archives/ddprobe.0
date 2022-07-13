Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1232646B3
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 17:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657732612;
	h=To:Subject:From:Message-Id:Date;
	bh=ACFJbHWhWSTp4gzjnVuaNXO3J06A7HZ6GXGPZO9LhCw=;
	b=KJBr8ZW3P8m0x+9pF5PZrZ9s67JMVAYd9htqGqu6/xkfHvXeGMyJ7DUXU+1z2KqB
	ZCJ8YBabvNYtVNn6qLZoJEZzXiYMB7wu5a/lkW7dZ2u5tNp4deuynMjcrR1mgsIX6FI
	WlcBDxIdzFCcDjNH6+K0w3C6YblPLGMfyY5mL6Fs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657732612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ACFJbHWhWSTp4gzjnVuaNXO3J06A7HZ6GXGPZO9LhCw=;
	b=h9p5ox4LA5F5ywFWaTdrnB6422JV0AGsKFAWbcWfokM2bSOYBdx8tPHTheKUThxN
	Sa7hkSKzWlXUtJvrmx+wWTbgbHa/t4j1K2pQwHhB9poNDypSmLTE5x0cjXJXr692q8r
	0NrVchcC5r80n2/2MWu+WJnWPkPKyMgQp3uucd4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f89040b3-ea7cc121-b737-4c94-8928-31aa2c840d36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8bbc69fc805917b56461bf85ac8100549e549c59f8badc07f52527dffc08851
Date: Wed, 13 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657732612
