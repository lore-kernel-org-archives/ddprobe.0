Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64247323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645965384;
	h=To:Subject:From:Message-Id:Date;
	bh=+BEhAwXCtmA0Ejsw+jKySiNA/95EFLKoR/T2wBf2//I=;
	b=ZrFLx48N6r3kw9wGm27AD3/Ex6K1O4zyv0o49TebSXpAobaI/1h7xOTuAz6rK0t4
	HXyfFvTn568Pf1llZkm4KbkDcdJuKKgSmfqeAKBK4C4GWxcM99bdQBLgNWnYjQ0q+yi
	d+d0c99m68MVYsyUnK8c4P0j/gXNRP4kj1Jd8j38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645965384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+BEhAwXCtmA0Ejsw+jKySiNA/95EFLKoR/T2wBf2//I=;
	b=f+tGTok1jGVBsc4JyZVPB0Eb8jU3SvptOhJtkjLRjTCoMQmAfy5PoH/ce3EoitQp
	ejniYyGttm+RD90/5LkeKJsJV0Q/TZ0/lCg9UnwBJW4SULTcVKeRvlnjeMfZiSN3DlN
	qQp4SrP2urobeo5tug0eYxwmPR2f2l6TGzAbqJbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b2e9c36-77ba1641-8a55-40bc-bd64-7459e426fefc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48beb63134cdfd5d39c00106a952b07fc9b39cecc02ae27b8c5b0a0a47b0ae32
Date: Sun, 27 Feb 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645965384
