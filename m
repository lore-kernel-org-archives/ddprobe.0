Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E951D7E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 04:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654403939;
	h=To:Subject:From:Message-Id:Date;
	bh=JT4wRmAwKfiM1n/YYf5DZ4FnI+QWJDO6oeSYUW4fewc=;
	b=SL6tIa+sV1h2M0KOjIIeOZ+n4MPzDsRmc0y68zBjyXi0dm/NMmkWlnriZ1p3xouc
	r903LXSLuSFT4wv9T6hwbvuBRDmCrsOcpe8vwR0ECIbpV5MYRYQxewb6KB5E5l01AAH
	mm/094WLZwog4+5brzkkDEYscjj56T4M9I+9MmII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654403939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JT4wRmAwKfiM1n/YYf5DZ4FnI+QWJDO6oeSYUW4fewc=;
	b=MRqMwd/ahEZL5C+PnmFIUpgpRnQnQWJa97O1QaVcCdka32GqWu0+SbL+5R1iobv6
	ShCXa/BJgz2lW2IGv6aF0QmwTS6p29wPG8ok+HY35MOzNWn+dbu2vv4Dgtji3Afztpl
	1I9leYXJGt44MLGz2137hsOD1gl8w/9CbHDubK1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813228bbc4-63c2e724-878b-47df-9bca-79a73cb474c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c3b013093bf82b72add9548d27b8afadd7d268dd19826802861b94038482832
Date: Sun, 5 Jun 2022 04:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654403939
