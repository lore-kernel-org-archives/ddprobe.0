Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3AD61FA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 15:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654443899;
	h=To:Subject:From:Message-Id:Date;
	bh=f43QCteNnR1vHkFDzM5CqkdkAhogtWs/ubHH91D6Z50=;
	b=eBbNF2TCNzn5PSwsfFtNrPpuuGQfw+YchqgsZbOUD+yhrDOaaRU//WoJEJNXSKyn
	qbbTZeWlXKKRnIN+dqNLfaKD7OnPIRYD9tmEnJH/HmkeEpdDAhdrjXsBQTYmAOcM+6T
	+827oXHZuD+PechVWxkCVHfwD1Rjmk/wTOqIhsFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654443899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f43QCteNnR1vHkFDzM5CqkdkAhogtWs/ubHH91D6Z50=;
	b=LSWVnxxbC7N5eGW2G6bOjot5/Caud1Bbw1e5CH0dV3X5UxjKCg60j/p6iNerg+lw
	qVlCt0xlE8W0bcISorl1qFB9RQLQZkFdIQaLUxNN67uX+ttbebHJafdJfaa/ZTAjAZX
	F4nOqqqcU4qwmSoSM4vFNqHnmfPy1uCU67NBq48o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181348a79be-f2e2b096-166e-4931-8ffb-79b865aa03c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dbbf27f1b0cfcb955c4a21d2f629916849ca57778f3526019ac981ed9154265
Date: Sun, 5 Jun 2022 15:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654443899
