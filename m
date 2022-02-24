Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825367A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645713684;
	h=To:Subject:From:Message-Id:Date;
	bh=u5tR3VIoMtXViyu1mvKQYHiS+oFKYBeCqdAGcnWkE3s=;
	b=N7pJCaxbumLYJpQPuk3smqtQi/e/PTPU1UCiSGq+4ZrsbiL8Wr2UQbPZoLyaapo6
	/KANAIdWZoYsjlQRH0FFgwCRbz1EOP0z2VE8nqF43Zr4Wavu8ajZMko7R0Pe/N1oNUh
	nOn0ozIdJBtxYaYq4oqR/nB0eTEA3pa0+EbOfodI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645713684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u5tR3VIoMtXViyu1mvKQYHiS+oFKYBeCqdAGcnWkE3s=;
	b=hM1knXDcNsKfM0jrl//O6HvC1b8hPBTbV2XFFpMLzec4modk8YJWlG0cYY9NQe6G
	VppxJ0rySQmhMNUmpHhXZw3pKEw1xh//n/hLF3JjWFFV+T1pzPgWLpG6zotbFR8WMON
	QiSWIzMD15KNYlgtmnrKU5U29LGmMTW0RNqt2hDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c2df904-e3260700-1628-4a16-9c5e-74aa36f5870b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b641eddc592063da4fb393a5d57b8c87bfb57a32f7fe400b9d7220cffbbc1790
Date: Thu, 24 Feb 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645713684
