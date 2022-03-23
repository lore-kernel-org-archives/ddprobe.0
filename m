Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42A1184E
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648037185;
	h=To:Subject:From:Message-Id:Date;
	bh=/YvJNcW6tbU23T6cEuwxxBkjOsarH2q7VFt2qk0bT3M=;
	b=Lub+gBbzYb9iRVUyExrtSKLeFv1KIWfiOf+vK+QJcq0GxMdx2c8LNLVWOyrKF7B+
	KBdtAOnZaiUeCPuoz/+osZtfcQxaaj/Y3zh3Uwqbyco4RHS6Cfu6Sa8c8VpcvqeH5Dx
	aal6uVRKtPYKQoZNBXV5LE1DU52GNousuKOkMO0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648037185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/YvJNcW6tbU23T6cEuwxxBkjOsarH2q7VFt2qk0bT3M=;
	b=R6udYqFQ3YQzXMDBMrxHNvtyHMBI+N4CHo0MKmiVv9Qgvsflfbc5KfOxX286JikG
	5XMxpKp9kP2NC3zI0Ulqb5HYdNtH32HeWSu9jAKqvKHgyQHNnsC8HR63qc6VeePfRzf
	311HTFA+mqPiCaGdUIMnOJxSYPrSyGTvy7tnfNO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6abc4da-2330a7bc-6bb8-40a4-a949-9bc63c019e45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84afe6cda285c580c69e4260c00f2a3c5a2769e437cc95ceffd111a4e8920220
Date: Wed, 23 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648037184
