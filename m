Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E031E7D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 11:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644750609;
	h=To:Subject:From:Message-Id:Date;
	bh=7aoz45HbOlRL84gjlhTPom33CbbbK+/XHyRQLiG8MkI=;
	b=YiwAgVcpS4Se/0+onSzlBfDGxDOnpT5X4b+UNUdyj/OvrQO8oVi4/itiYdQ7CnBC
	VGCJL6t1EBpwBNLBxViLthhtcY4VZRoviXfc2dwcYDsI4LIkFpeSsklYf58Hl680nX4
	TgHmK7ZCMX4dDAJNhQjJGaL+hoTIq9t006kI7zig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644750609;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7aoz45HbOlRL84gjlhTPom33CbbbK+/XHyRQLiG8MkI=;
	b=QJh6DXk8bQaaVoPvkR2Y1Vmwd/BmncPlmF0DBAtbIohEdwKgZ28kTjtNVE4lYcft
	t5YafyyV0+8ZPginD1lRfbCsiB8YT81klHNlbq3PRIGSuewll2aeW9Ndt4H3O3uqz4p
	4ZlDF1E2gjDxK2zoz4aLoBciAgosD80psBENO/AM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef2c69afe-0c0d7eeb-c02d-4a19-a013-8394c371af8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c88f1b25097c1882c39b7443aebfc525b659d993157588b309227adf3b1fd3c9
Date: Sun, 13 Feb 2022 11:10:09 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644750608
