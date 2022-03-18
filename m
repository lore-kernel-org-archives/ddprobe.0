Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEFB5137
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647637584;
	h=To:Subject:From:Message-Id:Date;
	bh=qih8QiXUd9iT4dynCFbrLYX0iQzGiiro7C9deS2FRpY=;
	b=OQrZjcJP+FsM1LvsGdeAZfm5fqIBXxmH1sF+rTakPCcreCocgx2RXd5DpmzcmyYJ
	t1yX/wGYikWRIEzOpf8MMcWa7aV1BxHyiss8pVrnsbbR9kx93TWz8MF+tybQBPKRQ+/
	mFu0vqV4hT+mI6r5dFfBW+J9VVgjd4gUCQQBlZ00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647637584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qih8QiXUd9iT4dynCFbrLYX0iQzGiiro7C9deS2FRpY=;
	b=LTz0YlqJbPBuzKnn0WLmXkjgCmY1vWPYGjiGhqggP4jfvu6ACokUvIJQePZwGA1K
	g/5kEciMTxLb9XjriZlrZQFRV8b2MouR0sSvPFWEvqP0aLVHsngbU+0lyZ85AhFut9k
	WckBxexRibnAMyA4LxZUu5S8jW39rRu8x9d+lNP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9eda5ba8-94055c55-f95a-4f8a-a158-f4d59b8beb5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4b9ae0911abbdb7aec712fb8203eed8b72a91c7df453bbe615c5c6d2ba8059e
Date: Fri, 18 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647637584
