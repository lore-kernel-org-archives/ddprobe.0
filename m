Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5639029AE
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 19:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649444578;
	h=To:Subject:From:Message-Id:Date;
	bh=+GGh/SYSE//s7LEGcrBSn9StNnph6mkNLgwrhY1NSSg=;
	b=PNrysxeVw3aNY+ojCKtKI2g1oTVFJ4eQOfvCGvOqZg9bp9LRN/rwCf3cyomzaH1X
	eARYB5hnZUApRS6SgWb29Apx+42WSc6M5t0MinqE4Yq9XeKqWGgrmNGuIv0HPvxXkSa
	ATUE810ctNj6YD3SrIspOE+HYJ1xI881qo/bq/bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649444578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+GGh/SYSE//s7LEGcrBSn9StNnph6mkNLgwrhY1NSSg=;
	b=KjToeFq+RkeEtwcq6D4tTZqSeqxwgEIzrC3YY2pdNXcPjU/X+sXXZT/Qogb8c7QY
	TBrG7BwxNK7XFmWgVmxmgw1R8ZJIVjQpYL/3N+wkv4+lAUaPTRt+fZFhf4sqLcouAqv
	/ByV4eecTsTEsNbPrRZGnzseEj2m97O8fNyLIF6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800a8ee4cf-4facbc27-8931-4a57-81e2-82e531508c63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cf12569ee4559d7b74ade4387fccd428c883ba53018ec87a828b0ffbcf764a3
Date: Fri, 8 Apr 2022 19:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649444578
