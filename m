Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C057A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647187585;
	h=To:Subject:From:Message-Id:Date;
	bh=+gVf0I0ZpMS6xVgPcVgi/zFpj1ivbEUSmm2a+SneXZw=;
	b=UleuFAG1iGdptLRPXX+ODMKSCpV4/M0kvLEV74rtuqlRsWnYNF8deYdhSCl4sq1O
	+kyFTAwkiYxdDXRfQ6bABKAynyGE8afKJ1TDUhpoe4aVkUfz6Fx//PEOWczGfvuMTmZ
	ouadyyMJHk/jxdf8RRCgGctadcR9iGkK8XjDrMzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647187585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gVf0I0ZpMS6xVgPcVgi/zFpj1ivbEUSmm2a+SneXZw=;
	b=S90+nVOLLnXSIt0mC7whx1ffjCkchwalE+xHn7a/YuitAVReh9V5FDoF/4tgfGPV
	UdePJ/ng3sSYEK4TdkH6qyUEcceeHsZNR0sxvfO1Udh2HNfDyiKWcJuow/vg+qQY8xh
	W4oOspS1saOhV0ER3fw2tjAHJCHawuPCbcIRy/1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8407e6ef-363e1d77-d394-42bb-bd56-5dc51fe567c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05ddf9d57885b260a21e75c296ade5d61d90e35ac6b55518731ae4417cf51e88
Date: Sun, 13 Mar 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647187584
