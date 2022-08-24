Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F1C1870
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661364052;
	h=To:Subject:From:Message-Id:Date;
	bh=o0O1E5Wbf5T8PMaNWh04zucTtF6xDmW/F7K+rWriLqM=;
	b=MSDfSXlDLucx5mg8uoa7EdwanaAGUKaEWdLYlW+oA+yj0hz4FNBqRLIWWUuqoUFV
	LjrjFQxY4wHt+bjm5i8XchdGKwGN0B3whCUg7GQdUfLQwMKMNnsS3suz6sNeFDsI66K
	+ZpQDS50KVWjo7CXh57CoFQDUK2e1VSQzOaCewEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661364052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o0O1E5Wbf5T8PMaNWh04zucTtF6xDmW/F7K+rWriLqM=;
	b=KHkpR2G6N8FYdPAzRRHEEmuaL1wn+g6F4BS2Tap+l5RY0rs/3EQZUKKpT5sob9ZI
	G/qCJL1h/89nP/s7SWVcdBmCLyQ3noAmJoX3pU1gtEikGoRvsP37yIp7tbv4ylfdXWp
	EwcIkFnD06z491RfYrpO4+oOjNoLKWqsLeoMweAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d103a22c-81fa0582-db96-4e98-b9b1-b19c51c74228-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aec16acd67ba0bd1451b465701ecfba71436552da19971c59d2a77355dfaa8c
Date: Wed, 24 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661364052
