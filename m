Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA7A7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659727852;
	h=To:Subject:From:Message-Id:Date;
	bh=oVMi+6MWFA1Qa+jbxmtIb+rfQKRvlbcIvJux956Vk3g=;
	b=AcEKqWNhQ6/SlqD3DgvLn7Gr3v50PmQyDUrwzF2pppB9TsHI02p/YldvVz/UeiEn
	unKlP4vJlTzRX08OuGz+OoFZXO+looz5SFkJj+ExFxvxII3Hz7u2dqQiENIPo03Hdej
	ENijzz+dgm5wAR/NN02mERXQMc9BoVSUSY3TD7+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659727852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oVMi+6MWFA1Qa+jbxmtIb+rfQKRvlbcIvJux956Vk3g=;
	b=LSyGCsjJmJSikMhbXkLdVCqPBIn6OFSkmNVaIjGJh2hntJHiEgJpxoPxXaDhQiQ4
	A7rHOhSkycSmJ4XCAEXUXpAThiio/R1fpgm8aWMgRWw5kYwWnItxLBMY6gQG5ZRJegH
	fk8Js9KG3bl4bWCwPmgcdK1xxfeOYi0MErTaDKUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826f7d3403-abf27a60-818e-47d7-a86b-c1af5e76f2c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7972d51b09272fa5f579cd3673c252990b1133a54a53779432868187eebc4ed4
Date: Fri, 5 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659727852
