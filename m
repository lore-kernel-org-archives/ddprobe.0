Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5A07A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646658385;
	h=To:Subject:From:Message-Id:Date;
	bh=kfeXAo6bJhwYgbVsvRt4JvB6LDGejWDm2dj3lJ7awcs=;
	b=Vo3p5AtXkPympmC0uqFksZ6DaBq3MQBMH1nLs/p026jYQZcOanTl/DUqFSHavjQx
	s6b3b7APP/aUd+wJfJPUG5NyePvDRAMOEH5qVf89ZwqTzJwLgI+dEgv4ELFobxGvJGq
	QEkF8h3HDa+AIopEQztX9qmDko4E6e4tryf/FtLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646658385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kfeXAo6bJhwYgbVsvRt4JvB6LDGejWDm2dj3lJ7awcs=;
	b=Rblix1eOhrrcDAf07Lu3YIWRD+HDIUTYB/R4z8+j1LvtmL3EQvMbVccmFgclCxjP
	K45KIK0Rs1Y+f9a+8bJFJvmoAEx7xdfAj8GhH23hIcSWAt2pyPw1Be7RcyghQrWcneJ
	Ar7Ki++2JGI+cJSNXmAA2ecTI0Gt1YZoSFoAwm6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f647cf3b8-2081ab10-60f2-49f4-8f21-53e30c719148-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87df60e034f14453cb12a34711485b355d90616a3b7a90159f990d84145fa2ff
Date: Mon, 7 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646658384
