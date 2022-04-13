Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC4B23AE
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 14:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649860498;
	h=To:Subject:From:Message-Id:Date;
	bh=fTNmFACnBXVaW6fAII83GpZ8OC0pdxy4UFsimAszdYI=;
	b=YTSBqe8rgyNuPm1WvJb+2rEqsT/br0T5qZTTG3BtXE0uMXCQYEgcjo1kEwifY5dt
	LlMBjd3xicfgyX+GVszZ8t6jiXpsbl8qouD3kUiKNyr+JwkUnFsH84R6WEJhWBzUklK
	Vpnt4A+FuLsezyvcMzdH+6s0efvysEj7haTMSBRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649860498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fTNmFACnBXVaW6fAII83GpZ8OC0pdxy4UFsimAszdYI=;
	b=c2S+7ADL+/Co0m1wm7j03Md4b9NP5DGu0Wzvn6cv/G4VltzD5dRZNwsu4r8Co0QN
	rTRRpKK11DbjemMDx4kD8HDO/GhojWvfwzp14xZBkAU0w2+R1Y3b6NQK/6oOC24gTi8
	B9hUhVuS5NoKtQrN10BKleiK53GmUHvf38Nk03Po=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018023595499-88323377-79f3-457d-98a0-0f911375fea7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b969b57e014d3ef737ac1b49fd061cb54e36e8f89428cea860ade14ddc0ea68a
Date: Wed, 13 Apr 2022 14:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649860498
