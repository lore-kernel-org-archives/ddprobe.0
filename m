Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0887C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 00:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646612485;
	h=To:Subject:From:Message-Id:Date;
	bh=oeB8MUWFxVVq2BqtJ1AKOX4ZegZ4z5j1h6Ta+DPrbSU=;
	b=mi5PHJvQ1CMQWpuZR6HdNjERu1SWn2/omBg58jguKklxTdCnVdseq9YNCM8tdbb2
	BXmn6CsHxuIqM/eM6s4NsunS6Oa4GFSq1BatmHR/M9fSozgb/g6808NQDVqCOOxOqqz
	SxyJLkl6qgXYMS2La4l7DQQtbqrnqhH4mVztJSV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646612485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oeB8MUWFxVVq2BqtJ1AKOX4ZegZ4z5j1h6Ta+DPrbSU=;
	b=CjSjF5DZj69oNNztW5JRWmXO5g8bjiy5huWB8+L4kaqIW/F2oDjDPBGLKj/nWa3m
	LeyvVrKNpMGBXP8PyirzeO3MLn+pMog96mVZ4cneac4+H52FycVzk/SZS1gl/TOxnI8
	XLtLbpgQ+sTg8pz1XR/0QttNeyHN+X1+gXe6847Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f61c0929b-d8baa991-b6fd-42aa-8a32-7da76c7f0d76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60ae53e99d02dab76500bafd9bc9baa66d8005b59186fb4d8a74eb338a1cfee3
Date: Mon, 7 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646612484
