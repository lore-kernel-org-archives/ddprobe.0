Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 827632CA7
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660146652;
	h=To:Subject:From:Message-Id:Date;
	bh=3c3juYwcUHK7UhzB8iwVycbCNQ8osRg7n2uFXrl6WBE=;
	b=Mcd4XkEUpXu3U23Q4Chluc82r7D7Gp9lk3jKAXzxFnQsosz+UGV0fAR4WH7phd2u
	vrGAiWnbSwIKpeg+VRLbIx2m6oFtAlw48Z9HTO2ZfoaURRrZMi9H6StEsDDBTEjGRWt
	8uSWCjjnhfIbrBhlPqygPBgwu/SmriLkqyy3FsBA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660146652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3c3juYwcUHK7UhzB8iwVycbCNQ8osRg7n2uFXrl6WBE=;
	b=HLsQ0wlJ1UDAluIrN1zQGfD5tfNoUNkJBL4QI2l/bb+vbRzqzl/LxuB3b5hl6iOR
	I7Q3/ko31giXRXzqwyA8YkHBLwjeRglQ4KIV/OeEryuOv172qbjv5DccDPLMmtMh/RI
	MdZ06iJf7kV/DmQpkvp50NI+Ake+q84ZSaIrQgS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182887395bc-c3f72599-237c-4d0a-820a-b7d383ea8a32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bab90b19226fd7f634ac2957db8557c403ac5bd368b652667e82ab72d9a25d0
Date: Wed, 10 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660146652
