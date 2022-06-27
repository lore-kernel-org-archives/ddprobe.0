Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3077F46B7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656358012;
	h=To:Subject:From:Message-Id:Date;
	bh=iOvP+G7z1SUnyjZRydFn0+hlS8WhRrndk7k2RbkmmlE=;
	b=Jgftda98JCgmOfrhYuafE7FGnhUc5BGICVaN3YHotzUub1AD13OfU7wYs54kGZMS
	ikbyOJa1jJSDmaTwZdn/Y2BKwoMN35me8gOuDiLspYpKtoyVpaG6WkMZ9WpEWb78wq5
	tAq0rhE3IKR59m4RNRuyDjzNLLBqDi5//F8QZBiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656358012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iOvP+G7z1SUnyjZRydFn0+hlS8WhRrndk7k2RbkmmlE=;
	b=YCR3SqVi5QHzeNP/pJrOYTeFfEKTGppf2T/JiwLwKxHdG8VGabTobyZYHD236cRc
	BVRlIqJRlfxD/YZhzWnBCtOCulUbu4PS7AD80Vx2thtdOa16v9LnTrZtULqbxlo7f2H
	NCDbj2MuSYnV+Yq/xZNZJWWHf+rruiBS1KNK98I4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6a1857a-15f34b9b-c6c1-4dfa-aec7-b06633a3924c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2da0c5079bb92b580d5a99d45299f00cf1a1fb90c011acabe6b0700397cf1b9
Date: Mon, 27 Jun 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656358012
