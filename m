Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97B57E8
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 07:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651822678;
	h=To:Subject:From:Message-Id:Date;
	bh=gDPyekyswo4CPRpY1aBzyhv9PHxbpeTvjpw9c1QXg0w=;
	b=exn4FVgbZv19SBAnrJPyGSEZWVwNKgB9E9eiD7Kf2WvvWeSBB+D2hBMpslJtWyar
	8r+YzRdTfqvzE4VxIF9s+P76kCH/bhdBzj9S+HsPXVT22lB20ZsGoqi1JsP0PaoCG0l
	FX62EwOzGV4mCx7cEvIjX+Za1XFb+j+vsVpXt5C0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651822678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gDPyekyswo4CPRpY1aBzyhv9PHxbpeTvjpw9c1QXg0w=;
	b=buKJPlNLQ/IEbrTkfB42COOWFd7J+Th8p8isr7AK7wsr0thcGGlWVD4TqERjvZdD
	PkHrcs8SLGds6NjWnWUX5TKjRIq0LojITM9flCpXspAZ3VkfeNG5+RQP8h2ZQjl/QU0
	pX/F3QPrRXSjF5SGycgw7WFc131sc/1YviD7rxpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180984dd0fc-e3b5d343-c2fd-408d-a80a-76f45399a908-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 763144a6c307527529a9e72747bda51b923c9dedd28c1cc1e59a5c156ae1f266
Date: Fri, 6 May 2022 07:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651822678
