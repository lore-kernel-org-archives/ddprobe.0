Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B2B7B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 22:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648853278;
	h=To:Subject:From:Message-Id:Date;
	bh=OZMTvqnLRQ/E4ImmSGdQGhJ9E/I0sSexkp+X7n9HQTs=;
	b=GwCBUrRluw5pRiJhRej3zGwGrYb5MO8tc2bahdh5odVc5Rxt/ZMzihp8s55pCPXF
	8QrEmNsiouxjWjJXNu4HpWsECMK9a0qpX4wcEgiM07tcvW7ngpGJjhdYFEcCSi1Whf1
	5S1Xuw1CGzFtCkHbkFvYPEbP59jMgxDA2QaLG+K8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648853278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OZMTvqnLRQ/E4ImmSGdQGhJ9E/I0sSexkp+X7n9HQTs=;
	b=bQ8+2MDn6ML4KJQV0zno3SWust/fL+OZcbiaMZggLAcCBUA+0YdgQwOeuz216kJt
	WyQaZUmDGB2h6/xPZcjGXi+SZuMMFC7ZBNNp+DvvQTdsJW2b6T58d/mR7ofRuGWPp+C
	R0Cd2zA616Tw+6f07Hll2zQEZk1/+406tnF9fEPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe7505edc-5b77777a-6ed9-467a-b85c-f9e1b6f58adb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8edff4740bddab281e60f524c481021ac0a0d24f08d21869fc92e218c320798
Date: Fri, 1 Apr 2022 22:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648853278
