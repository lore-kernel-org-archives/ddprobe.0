Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064662917
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 11:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649073478;
	h=To:Subject:From:Message-Id:Date;
	bh=oqEq1U5mPDqj+kW4OHHw3F54aTJ6UcmHydyxUmsLRvo=;
	b=DkQB0+wOquGTd0E4Goe8VYKvkQkVDH2PtK9My1d8rrFbyJbMhAgZ9NDOlM8LTUDn
	06Sz+8gu4kE5pFYqt+3JKeWeuFYWVLR/A5te18/AagpSEISJEl5Z6AhurIuznX/3mmB
	BI0K3NfPQakzdyHsGlW602JxSliChjC2n9eABbXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649073478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oqEq1U5mPDqj+kW4OHHw3F54aTJ6UcmHydyxUmsLRvo=;
	b=Au7G38wnn2uuW7COlaEDcKVaJ+q0r4v257Qm8Q0cYExtmC+LXRNMt4ycTjxjBBjR
	+gesn5JDi7BYWJ6nXjJnm1KCaDp5d9PanGnEwtwWC+wivOwKyT6n5cCOu+fPoyRMAi8
	dqviRZnffcQiON0DSFGanv83+9Q77WS0WV59VUtk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff4705a88-f4bcce00-4ca6-45d4-bb90-cbf317667306-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46a04a97af08d60d85d506330bc957078bc098f8cfa88252b8d1de7b54b2b478
Date: Mon, 4 Apr 2022 11:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649073478
