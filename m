Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9AA1875
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 18:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655924220;
	h=To:Subject:From:Message-Id:Date;
	bh=+lKagCejwb2a7Kkkr38BsNWVp76Flb/7Pw0vTwTtChI=;
	b=AsLI8twQ8/icnA/nXofp3VekEVrdF0gLCdDOMTvzav6NMpPhGt8gszzyxdy8ldbF
	pU/4C5+eDSa2cs/CPKOsynzOrc2zmbu4oMsN93Nx4NX4S7c6/ox2IX1AaLVFmHUxa8b
	2uQ0KaTGpTxvqjjRuiyDtxYILiUuXbvuxNkCgs2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655924220;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+lKagCejwb2a7Kkkr38BsNWVp76Flb/7Pw0vTwTtChI=;
	b=Jnj3r9FRqvH2UETCqeASF749a41B3sx5oI8odfmdZMgNjvoVHHk4b+Kg8EiL8vQt
	52//odhMcks3VkNb+Ulu+yw3mwQem6sJnnKM6gO+1aT4JX2qXgrxYcxBl+yxniZ5tSj
	Ys/y8wc6Y9ofaTyvgc2598UFqySayOkAG7la5yzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818cc65d5f-8a5144b5-f025-4975-b2ef-3e02aaa2d32f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11d518f6e778eca7bee0003b3cdbc40f0210b68cc6b9a53943209d8eee701748
Date: Wed, 22 Jun 2022 18:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655924219
