Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B151EC64
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647950485;
	h=To:Subject:From:Message-Id:Date;
	bh=iK3tWvdiGzOPyG40pHMq0rQkgbJy8dfXJda3hNEPXQc=;
	b=KcSrM4esnYyd06cT+Bb8ZmJE+h4boxJ5js7w05TJFElfxnujZ7pGt97yWvbHBKwE
	gde5147mUHmjtSjdfW3tDjh2NAZtdcSOVU3ODR77oB/jDUCWXS3OCrc9pxjBVklyHKQ
	2cyLpEXJnlbYvzYWENxacbPmkKyE7Bw2z/QIAP98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647950485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iK3tWvdiGzOPyG40pHMq0rQkgbJy8dfXJda3hNEPXQc=;
	b=VvunCM7Wef8MUzYiFAU9i/9xw9YEwJCBwP7CB0qefpUqgHyl3wgN2/y6NlBRvXNn
	NwXGqV21DqsWJuUTbyCASoXcSEg3kZBT5dL+FOATDWfw3EZysyqBvxJ+5a8F3DhaXcd
	V7jX6EIGwfF2FjvEelp+lGhwtHvVNgIZeLUHfIjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb180d5cf-14e600b1-330a-4410-ac48-546b30b79469-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fd8b32efff3338eefb0a6a928b699df637079ef9e9ab1b21732a71cdc9d6e6e
Date: Tue, 22 Mar 2022 12:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647950484
