Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33BA17E6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 06:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650004918;
	h=To:Subject:From:Message-Id:Date;
	bh=t7J7PoTP/FNJClauqRj2oiD3nft5LukCD9hTD8CumiM=;
	b=d64bPE2qkXRzw8bIGCyPOcIMgXhDDz2sUODvLTR4LnyIjooKIRLOUok5TsBozqNV
	t8Ul1D3wZcVERSBKsERPppizCKMfrmK/0BzY4p8ZJBURw++61TejRdqt4evs6i56Ipd
	POSIbnKAXJy76cwodJC50THgiw90LEdL1eSJwYiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650004918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t7J7PoTP/FNJClauqRj2oiD3nft5LukCD9hTD8CumiM=;
	b=IIYpczrgqyPn+KFIBHXZQnijwFtDOIDny6lxLR0GWMI0nmoiEeuCWo2lwJJzSpT7
	ELXCXsG8exYC5wNvzT60ICf/CQDEq8kdMF9ScUUy0PfoddqLDfMOGDNY3DZ6GjKzenr
	aMpySirSmSu+S8DF3OYJAvon7Fyd1oPyqKw9gYlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802bf5001b-ac8a4a3c-3dd5-41ae-b3aa-0c64df5d1045-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a41b59df8c3e1a605da4b4a431d52171590e4fa2d4187507b2b21c600af7fe82
Date: Fri, 15 Apr 2022 06:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650004918
