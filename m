Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B863C1D
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657542412;
	h=To:Subject:From:Message-Id:Date;
	bh=Ih/qbtzyQxF8ZHztJ4aUkMZsnirQVKECUaajGrxGsNM=;
	b=Ovfca4kn4z8xtYNzMTZPpHU2UhsuF9CXCFFmLMq3oc2JBFxTz7YtIO+TW54ogxQX
	/5Qw3LkdhDnLL1YAtlPhPok7i/QBSAfNRsfIJZriM+urUIYzjkCOO0sSn5yuBwCXLln
	SACf9D7Jy6a8+zTz9M5YfX7srQLKbdj1xg7k+MYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657542412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ih/qbtzyQxF8ZHztJ4aUkMZsnirQVKECUaajGrxGsNM=;
	b=Oa56oYoMwh5ajoujEOuMR8Ly/4hy1RLWw/+F2hs/tNq4PzolfxHFNEPCvKP9noSo
	aEuU5QdYKCmAFHEXjOPw+QqOC4jXG+0Wu7tQLh4LHMItWqlFizn4sCxgCnw2Z2jwlFG
	VYrKSGsdEVNfIYEjH6S1W+XGR5nMWhczwP6WiKiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed3a07fe-5eed727c-1a2a-425d-a09a-dc7a66bfcac0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da16fa3fdad7ef83105eb4f62a1decd996466df2611ba24c7a700a369abf8d8b
Date: Mon, 11 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657542412
