Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181A31FC8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656040612;
	h=To:Subject:From:Message-Id:Date;
	bh=V66q6pMq32P3plE/nhGuHBy8e7y2bkac5MASBTA/WT0=;
	b=XfvMUeilvsnPeB4bFsP+x4DQLbHUAoJW4eyKVHwSg/0CRNsoBHYRL6wpfcN7Xu0b
	rLD1+i1D+qe6DQCrmLexeICoIc5y2gx7qfmhDw4XEqV21aMma5sBozllKG4EBv74MU4
	63pepi6VXdz/u6md0ZLK9rtvR0Tl1F/BXSZddH3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656040612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V66q6pMq32P3plE/nhGuHBy8e7y2bkac5MASBTA/WT0=;
	b=UqZNY9Mc533UKcaveEVGdrOslA47UFfNx1IxnF5wtzmhcCNJQAGhWpLYjkfLY/zU
	JCblAGyUwgXjEkRvCNAE6Tl19NyAhoPOL1vJT/hQcwFszPGJybF9dwLPXxWVE8SNQcg
	vAu8MPzT1fX/wY7tpeH9kgwaaF6IUaoVDFct26AY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193b661d0-cf15c1d7-92f7-4e1b-8ab0-51738a0a2171-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 414f3620b9ad62c033fea8d0908dfdacfd2cf3678ddd7bb8be60b0b14cfb65e3
Date: Fri, 24 Jun 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656040612
