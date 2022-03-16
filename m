Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F403B56
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647469284;
	h=To:Subject:From:Message-Id:Date;
	bh=wMsfuvzsKtgL3hZe+IkI4va8brs0SFjv/m5Den9e4ps=;
	b=lPuBRct0vqXLsLidAWI3hRceE9TKTgSPrvsnIYDoNOP+2AKUPIz0Ex6anOS6MiGZ
	ugJoC6NV/VrDaEbO1QiIFKmfmgRvCiPllNBo0jUjYaNecdv3peU2JeR5d5Db1Hvecui
	nf7rAczluAHWrjDgKy+P81YtnD7IHLvmkk0M7nms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647469284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wMsfuvzsKtgL3hZe+IkI4va8brs0SFjv/m5Den9e4ps=;
	b=djM6QKBC5Frv9aYmdiowvZPOoLAHC5u59O3zoKoMd5vqA6LSgxZOe9xfc8FvVCpi
	nTBP9gtwrF08uPu6JavccijI8zxdmzKUtNFKAjq8ZM2Q3fi4GU2aNiC6wf5hKh+fWiJ
	lvwaaKwisy4iyLsaBQBY1RZ9cszwS+tg5bg6rG9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f94d24da6-712f6fa1-0a46-4d11-9270-38a0967b74b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4770439a6cd587bf15da69475a192e1861436897d25aeaedbb4817a8ba17becc
Date: Wed, 16 Mar 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647469284
