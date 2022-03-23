Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F846AA0
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 21:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648070698;
	h=To:Subject:From:Message-Id:Date;
	bh=uGJg2GQVtA7sWXKP2G+epO9ZoziELMzNcJoHaZ3Yc1I=;
	b=JBYVu2gfOWkSWcW83ppuz0PJ4dMNwbAk2NtKa2ZfpIouRn16Zl8S+6Abn8KotTqV
	h4The7xw/gemcNJTiC1lhi+1M7bNFqnqU4nVmS7UCatloJCI+nYqii4hbDpRk2cD7L+
	CGDCMykYRfNH1YE00g9v8y3CCc3srHJxQKEM8dg8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648070698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uGJg2GQVtA7sWXKP2G+epO9ZoziELMzNcJoHaZ3Yc1I=;
	b=FLpcDwzQ1aqFHhhX2U6vh5w1FyRnwfN56IWIpZ2y2hiNLWfO6XBF88hFS+tujxip
	QqnaljsgVwtIqtZbytCJHWRF4W7s8AmNe8K8CWtNKqt2AMY+wbeWfJHaHgyl8yHwV/s
	C4fFQN8pB1DxlLmYKG9gapO5Lv6m5yaoybdqLdjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb8ab252a-d02b7916-3ae1-40eb-a5a7-45627e142e63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fcfcba7814faa77ca2e800c739cff3fae5e7eaf032693abc56a1f2188de0ba0
Date: Wed, 23 Mar 2022 21:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648070698
