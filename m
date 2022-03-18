Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579A24C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647615384;
	h=To:Subject:From:Message-Id:Date;
	bh=Dzn5ayfgtXDYxHzSHamPM9rRS1XKsAUxIMRymRjVUVE=;
	b=LzdbMxW+vuakiWCH28KJXIKuPDEnAlJPQpaHkgmK9M/0tZ4g2JXGL55uGj05NdaP
	BrU4Rcpb1eDPZCpGf7jpKPd9ddOXTF6Rt1DIyiRu94KZxBqy+RBYC+puAsGc0oSspUu
	6EfsWeHJR/O+qmZBS4LcPvzovNDPb9+vtrl05z5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647615384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dzn5ayfgtXDYxHzSHamPM9rRS1XKsAUxIMRymRjVUVE=;
	b=GEOcppEBskZaGJJobDdzkO8rcBtug/CVv7Dv5KemIC7/d7Rodx0Ql082BvaT2hSz
	LyojbRrzCxFTANaDOXLDjwwxemN1zyrTYnaFp2IUBRZNqwpUVVHKOxHiBj0mlNk+ie8
	iYERDIjxQEMLDp7JmG2/nEc+33AyCdnxPn0BtH+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d879cb1-9a9184b0-bfa3-4857-b38a-4d27a7551c97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 804c989d1a1383af22737cfbf5efb67b8b1eb43fde047372b21902512ba11cbf
Date: Fri, 18 Mar 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647615384
