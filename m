Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB270211B
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647024084;
	h=To:Subject:From:Message-Id:Date;
	bh=hCCZ2is6BhAPs4tCYbmIOM5ZhqAgxdsAf/Uqb7vbcvc=;
	b=Dn3gMITqPVjCPzGElq56cIMi5DwQRNb38IVxCCGm3WaQNuL6UD/QWkSFORWRxyUO
	NGaLajfl6dJveUyXaF3pGZxk4tvgudxIhKqlBzqbMChUJfbBGCB3IY6fh8R11Gc12rD
	rI/xRnnoKFQB/o0T5fXP5HwaNJqCFY93xBxaQiLU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647024084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hCCZ2is6BhAPs4tCYbmIOM5ZhqAgxdsAf/Uqb7vbcvc=;
	b=j0GJPi/SqUJWTJif4xpBLflT8HLUKIoKdmJU8VzvdXKY1j324LmMQaBmyVBbZ7Cj
	23P+8JVnl+rKje8uuDWhsgR217nG3EzE55qXByq3Wv1lAtGeqEXpTybg9jWZRaQxsYt
	w28x8DG2S6cvOlv+OvHSXbVLhmcpxUxvfxz/RS/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a491707-a92209e1-e4eb-4644-9c1f-ce58c27d6ba9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07781a73b266ef6e62124a052f168fd5d04f46301dbe751a08a19b8df2baed36
Date: Fri, 11 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647024084
