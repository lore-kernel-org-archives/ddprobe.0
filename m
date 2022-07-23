Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC747E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658543212;
	h=To:Subject:From:Message-Id:Date;
	bh=W9zsAjj+Zy7J8ly62GtQ4Kn9GuuljfXyw/KZhWkRreU=;
	b=HhTW0sgFBWs7+Aq6V43tzv+ZyJgCCv6UPA6/hULquALUYfuGOVpAUoFCiEfv2vMA
	k7TUF2ONj9Ih//IP5XD7UmqibAKFQHL9p7oZPFwEYBatCFp4XUovtRzv8V3uid+ukl6
	SV/9W1oalpraY7s+BBr+LM8FL77Rf/ssuOH9ZOBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658543212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W9zsAjj+Zy7J8ly62GtQ4Kn9GuuljfXyw/KZhWkRreU=;
	b=VZV2GMt6lDUUlIdaQjgR1OBmqIO00YjHK7DD+zLiIkUIqMdd0WfqJXzDAHmLxfLO
	lqTLBxHb93j7s6JTKrdEchU8Url1emcJLMalzFoPIgGWL3YelVChXKeDqbkdGS0jo8k
	fpORJLCYLyITG9zaArjijTqAU71pX4ukSarHGzIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228e1072a-f1bdb401-4ea3-449d-80c4-3b7d43eeba6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42e16969c2eb008610a6ee82e62f99a173cec9c62c909fab1184097dc1dd7350
Date: Sat, 23 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658543212
