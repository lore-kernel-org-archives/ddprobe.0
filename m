Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2321FA0
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660726253;
	h=To:Subject:From:Message-Id:Date;
	bh=WWLH5I3b2e9EHxC6vF8j6caSz2VxGNBtA11Lv74LujM=;
	b=OcwgpFkoTWtgxzlCADkgiTaweZZXE+COV7YeKPB+EUSEuxpZTkP2icvdsgOakDhq
	p7H1lrm5TeclLjXkf5C0WHzFYeEknexmtNcdcJmaKX6ZiJLdD9Od7zWOxtORk7y5TAf
	Uch1MhfJnHit4v5MkSTyOaUe1o11gpKO4LDudIro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660726253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WWLH5I3b2e9EHxC6vF8j6caSz2VxGNBtA11Lv74LujM=;
	b=VMy61SkBeB8LxEtJqNJaEyJQlhAAJOmKAWYOUqhzWj0FMus6Ai9kSVj7R330Cfrv
	9McrUwm0ZFlL6mrVyV30XMNbq9rqzcWQApc+8zeDI2KkMmAFBQoJWW2WNKno6E6RX96
	FZJwD2dGCdg/Ud+r+muOfEP6/5aCWNLyP1wWD8aw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aaff9424-fb4dda2c-4f95-43f0-8ed1-2f7527127cb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a9a817545349960ab927b9db5b335053e504df2e1599cd47bd112887a127eed
Date: Wed, 17 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660726252
