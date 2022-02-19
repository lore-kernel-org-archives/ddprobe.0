Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D2657D1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645312585;
	h=To:Subject:From:Message-Id:Date;
	bh=ItrFO++Bttv+hLd9fT4uvdhFGUqnImISzJbV+rLDckQ=;
	b=QuQD43czAuDR5nalNJcLamkXhrIC3RBxkPPsoaBiD7JLxUdwZKTLUJvrS26M8eG6
	KOtwnx7gTlw626X46Qqf4yjfYxZdQaidgu5zWFDrcHH8kC6EkZ0nLIRi1K+hlsThZr4
	GfqJVagFcKn+LIsTqKM1Nku+L82EyBRDRSo9EBdY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645312585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ItrFO++Bttv+hLd9fT4uvdhFGUqnImISzJbV+rLDckQ=;
	b=UK8z6Uoq+wSnNZEZ8XF9LlKo0kYdKDSXB9ux/508sH8vk+n0xqBKRkxXEJF10YH6
	bquWygdOo0gZvWB5NSZ2EYTfaZfG55s0XiVscqzqgbKYoHvDFQqh/cEo3GIKSXx8IbT
	hsfGt3zTZVV4aoOhtx1cyh0G5U2pTkaa1YLPTv5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1445acc2-789d02da-4670-41f9-9c36-7b0b86cadfe4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c88980fdd9c2b0e6d50938dbc6efa16cede29be5bade5f0e537920e1366b0ddb
Date: Sat, 19 Feb 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645312584
