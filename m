Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD36B7E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646541684;
	h=To:Subject:From:Message-Id:Date;
	bh=eKoirISWc/ilNb+7SekcdmVpM7xiHGaNJHh+qvFoUDg=;
	b=Ivv15GIuk2GX1FTNT36bcfENRJG8UieWEiaWOHAaLLQHwet+vHUYdElFhUl9O98O
	JvikjfpZxD7jlzq31yHXmQXsrzt4jNfj3mxJ220hs9kCZqLFh6KTW92RRcuuwXMYmyA
	HHHtOZ8r7hagDP+zVS2AtteIX2whUtg8YehHHWRk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646541684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eKoirISWc/ilNb+7SekcdmVpM7xiHGaNJHh+qvFoUDg=;
	b=ESJ+iQJxpp7BH/lR/ZMw1dX7/FVA0G4RW+MTBydpwgHiB1i93lTaVuKpfXkYPEpY
	yrPCmYfE9N7xhFWzYbQR3N8W99Ask8Hsel9qLp9ZCc3C4Zz0hqoQSVGMYINiiBGeO3C
	IEq//HOtXZCWpN4zB5Nw1GnQbZM7pvKwfkKDMIVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d88402d-e40d07d6-a1d6-4820-8f40-9d107afbf715-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22f0e5ab578edc46d94b4c45943a32688917dd7b3465ce271e9cc4a77873594f
Date: Sun, 6 Mar 2022 04:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646541684
