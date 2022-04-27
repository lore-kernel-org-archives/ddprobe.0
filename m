Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F7BA3B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 13:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651066978;
	h=To:Subject:From:Message-Id:Date;
	bh=crLrRWqdrCu6nEUau7Z/I6Z9W7QrrF2rdbaxv5ECP64=;
	b=HRPljE9VWuDtHmO/KQGynPpHzL08yfRFyXhx9dgr2/2FavWIIvUu2rGyQPxnOQt2
	S3gFvV1ZYJI6MwzoNFz+6m2TmeR2oKNXzmddp2lMuROa0mEzr4uTtZz+J5pQr+boPUQ
	I8tDGRVUPnNmSo7KAh43EUZAahsT9LlTHXm7sfAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651066978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=crLrRWqdrCu6nEUau7Z/I6Z9W7QrrF2rdbaxv5ECP64=;
	b=BPk47dqcZNnQP+8Be9kVDNDLqFjYnPS70ESEzTS5/dgOHhrBiOIFNLR6l+Z/6huo
	c+Jm7FeJj4Vw9OR58w2I+2oJdZ/6LZMn9JRBygueX8IgPc2YgYm3HEeueViK4RXq4SV
	wRnsYvWHO8bzzzssjR+jRxbWuFEAB57bx0hnrCTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b42bfdc-c2d43396-d965-4cb6-97fa-3b54d9c5a1fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e425f9e66b2b6b971aed618be3e97b1171daf1e7896b79960743adf28523b80b
Date: Wed, 27 Apr 2022 13:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651066978
