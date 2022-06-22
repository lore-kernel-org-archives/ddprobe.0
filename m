Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF1410E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 02:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655863259;
	h=To:Subject:From:Message-Id:Date;
	bh=uGhfFH38zXz0GwmAPH4ZFFrr0iNoiaDdJ6GGSxp1QCo=;
	b=AE74qVJVRQwXEk/oKJpe7AUR215CYo7OPE2ZkZoe/aD5ZEnG0g/vkyfBSZ3ZKzao
	FAFx3OQhDIN7ZKR5ZrgI/FDdF97z+X9YvvmQvcc/ISlRlM9OsBGR3uiW9UJPcbbb35z
	q5dSFWxvQqnjO5rO2r9qrihFHASPi05KWNLwN6ds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655863259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uGhfFH38zXz0GwmAPH4ZFFrr0iNoiaDdJ6GGSxp1QCo=;
	b=ckm4ws5U1MXlIE52+FcrqSl9BaxAf7mywiSH5B/rIjox6zHiDhku1xmCwKY+Sq6S
	EQ/FmXcVeO7gxInqIdOXZFrGJEFHq98Iw7aPBY1N70bpipnmmZQxwH6pYSNNnPehkFD
	/0cndL7YqA0TPQuC9AWDp8StXpjngAxkoJ9GrZfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018189243068-12fe06a0-f0f5-4933-8ed4-909638a1ac86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f10bf2ad944b4e7387edb363e4ff4cfea5591d78ded0ad85d414496ad263c99
Date: Wed, 22 Jun 2022 02:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655863259
