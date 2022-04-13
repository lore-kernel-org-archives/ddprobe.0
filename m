Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288C923A6
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 22:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649889478;
	h=To:Subject:From:Message-Id:Date;
	bh=F6hYiM79qrzHF6DsIBV3zHMBgvG7KyIGCDeMe/cP/EE=;
	b=C+qVqTpIkGday3Mey2VQHlVC9NepTGVOkNEHThekuh6ASkqn2K/x2ScqYp/G5qGo
	Lc+lZBEy2iUTgTuM2n7od9Kc4+JGdWcJBplzuTbvKvPiV4JAunzq1ioaCePMNWljzTt
	I4ZhhH58R8R8T/hriwGjP18YV1btcV015gzjeoI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649889478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F6hYiM79qrzHF6DsIBV3zHMBgvG7KyIGCDeMe/cP/EE=;
	b=RQ0lZ4tTpB1fEcHlkUoJtLKDcxy2E3xhyZqLakWGfd+7MHqDTe+FL2jPOZ3etTsH
	QfYkdcCRCybWE4kMKd1R7uh4kDgfnl5VE1uXU1HHKks3QUnyIx/wiU5Sf5f/7mhYB4Q
	x3ELt4CovR8eiIxNxg2U7z+j3NhPd7gfwrz/+1mI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018025138685-3dba9f62-1e80-47ba-9ff4-da6785f6730b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2baa9045a9539d275ed2d8985ef929fd77f97fc3cad8eae3fb59a40c45d89202
Date: Wed, 13 Apr 2022 22:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649889478
