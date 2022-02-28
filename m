Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732F6320F
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646032884;
	h=To:Subject:From:Message-Id:Date;
	bh=lPslmQkOz2y+B+kUdSwMPAxI3BUMrRkX9+pkIN8U0zk=;
	b=X5SQ6ALkFzYpqOHpzBxoKUM1dOyEwhBYMLB4SGdpMQL7u4Hd713Zt0oQ8hwTPICh
	unI8Ts6Vp35ZgRlc86xrdsq252ZyqrVuSorZVUjJXB4io/vyNnBlINsibWbVfODq+K0
	j9SDfC4bSEjItR7YpFzEf5RzxFiTGNUF/ThOz9Us=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646032884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lPslmQkOz2y+B+kUdSwMPAxI3BUMrRkX9+pkIN8U0zk=;
	b=Tdhm/5W5MxFe8J9UTbYysfro8kn9cDbM8G540SX/NXPlpRW/Ji5Gr2K42BMI+V1P
	fFT9NJTRJqidvneLL9xzbT8nxnaougCXZiTkxvNcieETMWZbur72Me0r8S/BefyP1el
	1VvN8Pqfrn/8esTHuPPQ0Qa13nB5itbpSQBQ2CHs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f34941e-59ff62cb-43eb-4985-81aa-19a35ff11e24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09282d8f3d8a5e78c2b970fa63dfadc0f516739e66057c61a4632b0bb37c3010
Date: Mon, 28 Feb 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646032884
