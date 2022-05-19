Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F06E2F48
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 21:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652994539;
	h=To:Subject:From:Message-Id:Date;
	bh=IqK4jP9z7J1c3UIJ3Hkfb+9IawvmJizCyOh3p2+yreg=;
	b=Wf2pSUSZi2R7H0twagZdUDZeaRt4UcfDAQZ1ouZ/ADFkX5jlA9B1oGhCwyTSvmXp
	D4585Wr6q/HyUbpph2lg143vmTAU5Be+ncbV6GT/u5iq0/D1Wjn3732GwKpWtR9MAAE
	6/+F4qRyQEiD8YAsKoBw+6mgeogwE/xEKCdq3kKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652994539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IqK4jP9z7J1c3UIJ3Hkfb+9IawvmJizCyOh3p2+yreg=;
	b=MT9Tbazt7eO0IjefbS0eT0YJ2LNZeaiVMi5hg+gGfEj4V8LNtF5PRlYMf4ttVCye
	HLV9o/KueCbuKyXx21Pz2cvxqmpooXHhILUZNpb+GGg6Qnp3yQD3O1Ram2BPJG/1Y4S
	kD3N3ownbIUPHyA+w9oGb0DDRQzsh5nzJonr96xI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180de26ff34-321e534f-3c28-4638-b95a-76318a635909-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 429b9f28e5cde71aafb1c6ac7670a8fc973f9f8d75094a0c6b99a6fc32f12fe6
Date: Thu, 19 May 2022 21:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652994539
