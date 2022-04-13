Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29C423DB
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 08:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649837218;
	h=To:Subject:From:Message-Id:Date;
	bh=SyORv4jsTo6RITZGIT+bQ48AMpgz7PR6wEmtoWkEgII=;
	b=ZHzed6cidT4wvZSYUEYf8Kt80LNVfMWfj+RqIZLovmisxODqGj4BSX3oui1GyMeg
	yfxG8gm8coKpKY3DxlkxtbGqYXKvSdzc6UlJjTg6it253czdlv/emfpNvGBN2MSGsIG
	+o+0a56Ytrw4kUeLyHkUqjEJHcxl58EdybzuWVK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649837218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SyORv4jsTo6RITZGIT+bQ48AMpgz7PR6wEmtoWkEgII=;
	b=Dum4hvGEtALMx4d0yNOt67w67bFB1XbqBhza/qTywQpU+dKxhMw1ZXlaSYJZd32N
	1+sOAbkHZzjBL0T3W6Fzw2HlTLFmzD4rDGCdoXVOxb6V5Loo4i4TGIH5oPKIp+/N9B/
	tp0Es9bl2cLZwCSrvs9Em5FB4vWI3cWOVouz0oBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018021f61a0a-075be733-1fdf-49df-bbcb-82be51168d76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba5b244290372b336a6fbe78c300f9900fd71b3bb9078d34ca3ef516495e9246
Date: Wed, 13 Apr 2022 08:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649837218
