Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E013C18D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646934985;
	h=To:Subject:From:Message-Id:Date;
	bh=FvhaRQBvWCCB9flc/+zN+xbqMWoSH6g/l0Fy8rMrFvk=;
	b=I4Kl0vlPmO8b7asBlX2w7kxBSQweLqA4/ekKPkPGR5U3M+NnK2vojK8RW2L3iJfS
	1j3NqfxmqOOvxkaG4ghblvZZqdV0YPgHPh74P4EZhEp5P82s547p/chK4e78FrB6lsl
	Yqyz69XK/DYlAtECv9W6yl79AiyRDH2ThVNvl1IQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646934985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FvhaRQBvWCCB9flc/+zN+xbqMWoSH6g/l0Fy8rMrFvk=;
	b=T2GXcu0x01Evn5TPaOuHUzDmATE1G/LrPNhDMFmQb1hMwRQK+MQboCzSoKo0QKU4
	UuWfn+XIouAflOA2nEEIiZWMlflnS/VVIjqdbljb0P1WiPQMNoi8oi/3bx1DqHqv16c
	C+nKDGQvFQ7Q1xbkLSI9vnFQNnPjNGlPVDNIwpNA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74f988c4-4374d9b1-0178-458a-8ba5-eabfecd60ebd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 996c5825b475ee6371bd66be74de0ff934784e2325727424d1370a2ac4b1ce0f
Date: Thu, 10 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646934984
