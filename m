Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6098C2F2E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660749652;
	h=To:Subject:From:Message-Id:Date;
	bh=5h2tnu/35lHBpn0jtaCAl9urGcfbNpeas88EdGTxtCU=;
	b=fgvvXWhoqx+fSUpPrBjHIzbKEyXqCMycxRtpPNFHOOeUtid9tJ+ypWM7LyTgcxFw
	GvreK7yUX2hEhmhmH9VVabISQpg8B2lzAIK+jo8I0ySut95kBGOo03C4816TPQtIrEU
	KZyv39jb/PNFWYCpZyC4QbPjePba9hknfBtOPBAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660749652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5h2tnu/35lHBpn0jtaCAl9urGcfbNpeas88EdGTxtCU=;
	b=cZhtvL+0i44Aqs/zzkLWdJ3PmG8FGA/rJZX1sKgazBZLoukFYt1kO9K2LEskzQgQ
	ETQBML9uoe2JmMliA+h5S3vKOe9KddEpGUW/r7bFKE78Ac6dzgfrKtFFe5ldJ7N0w95
	QBqht4cJgvK04JwdFxUyVdSK3o3usUyivx62gqkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac64a26e-b89c0a9b-2744-46a5-9ffb-b3ab81e14336-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78768db71504f1f0b37314461592244b09f56700c7fb26dedca6c1952d8c00a5
Date: Wed, 17 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660749652
