Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCF05107
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646853984;
	h=To:Subject:From:Message-Id:Date;
	bh=U0r0/YoTEePmHYpRUeNaphqAQL0H35Nbds9xUY0Zr9s=;
	b=DAdx3VUAEnHZ7c49wGcOD/S5+CUBgKv74f2XpvJ2MQuInhlm/pUHP+xKMdgvaVpH
	9+NEqdDykNNXEpgU7yFDLjhEhpdigyNB7L60OFeZHdCSvy6ihnZJIeA8767wSHUOWrz
	BQ3hQMWx3hPzlnLuiN5TwOWR6csvfcrQ6Og3TV1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646853984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U0r0/YoTEePmHYpRUeNaphqAQL0H35Nbds9xUY0Zr9s=;
	b=AnCW7XKPsj1ybPWjGMFtZ7Rn0p/cRf8UZ3kro96x5QVkI2vJS2jRbdvXBxnmLhlr
	0VHSn4Yjc9Kw8WaMp5YXtIS3pXwC9cGGY0iTHZT+OO86EPrpo5FQ5yutx+nBIKQpaxp
	8lK5tA9/SdAg6I7tiCqcAF94tXWMGA1DcEoLg9p0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f702591dd-94907609-2fb4-4479-9a39-4336211cc7c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7757fc449d70b8c3de09cc123facbc9e98ca962bc7a15a7cc52896ba00b48792
Date: Wed, 9 Mar 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646853984
