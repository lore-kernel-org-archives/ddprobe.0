Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3547D7E
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 13:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652102758;
	h=To:Subject:From:Message-Id:Date;
	bh=nxkrJ0PqTYIY07Pf9UWa99+u17KD9B0o6yCEvVG573c=;
	b=Rk9lP7rC1a1fA8v1pOf4J2dazyya8trzCKGmGKoHMnSN+Yq78DUyeNy7flTGsUXH
	uXNl/STQexqggkakyoE4AiK/WMjdnmHazZZEwZMj6NlzM1OOjpUtS54s2pDZfHOLsnn
	Z1WA+uKG6HFE6xr+tkflPYcicxMqoNaJV9UKJX7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652102758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nxkrJ0PqTYIY07Pf9UWa99+u17KD9B0o6yCEvVG573c=;
	b=MI+NoZmmlndeLLfNqkT01Quy/fgqp6wRsFf5sgbsDFk6Trn/2R3njU+8kLOGsRDy
	NWCm7K4pFdFUqT0J37BLgU/aPAIMkeMN8Xb58mJwSg8mYUo3DFURkzadBZW8IvG8AsP
	EJQSfR9t+vRK9wTYHh6qZQy3DwkaQj+6gDIA3P/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a8ff7f7e-b64a0378-ab9d-430c-8cd6-15ae6899179f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7c1f6b317c365eca78309c0945678a585c734491cbae62d85376c6b95371078
Date: Mon, 9 May 2022 13:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652102758
