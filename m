Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC8D2568
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645434385;
	h=To:Subject:From:Message-Id:Date;
	bh=jSIxXhh5udTo4v2F6KAQTx6CeNb7aayVWlTYQGm//x0=;
	b=NQTKtlknFDuTonEWf/fZgnrujdiypRD+0GO+FINqlDe4v+PCMM595UgFDerls1AP
	LwlkiPE+N6K2cq+ZnVxwhI60cbCWf1mbSlLzw7kHTrjZwWHwS5dQ8ZraSL+JTMG2hTt
	X/FahdidxFqWckQamwlO0DpaOJ2Yrn9BtfHmIWBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645434385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jSIxXhh5udTo4v2F6KAQTx6CeNb7aayVWlTYQGm//x0=;
	b=ItIbma1oLzB86vqO1LSvIpfGcNRNcn1m8BOa9c/LEXbgXL+UDR9x9FOscdXygdGz
	me891u6nd6f7XT/xZwbbkBkeihpNA6mE8wBduJl9dBD4KahGhGd1hPJ73N+FF8I3eeN
	4OHgjcjhURgYLFuk2EOFmkIhk6UaURPSnvym6QxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b88315b-64c9804f-c28e-41e5-8e25-adc46ba08ec0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b22e9a5c99821d655ffd9a5e73df3ae998b77bd0eaea1de636e56a6c94aaf799
Date: Mon, 21 Feb 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645434384
