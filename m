Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0946B7E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 07:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655711999;
	h=To:Subject:From:Message-Id:Date;
	bh=4ISWFwpie4Oid4l4VmeoLqF4W+tcvQzd6Nqfdj7+JEg=;
	b=JyNSiwEHMLpchnNbU2Q/D0x05c2rs7hHUeheXn0k1O0Xks9vRnl5vO7+nYcIblBf
	R7qWYICZEOZp72mZtqKVOueiAzVDtcc9LjJ/5OjYgqw4v2bKihHWiLLKDP3fX6O6kMZ
	mDn6Xqpmun4s+Vnn6xXyaw3X8tRw5fyklebf8bSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655711999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ISWFwpie4Oid4l4VmeoLqF4W+tcvQzd6Nqfdj7+JEg=;
	b=gWs7xN/s4s1icw2zBN7elOgtNMDMjz3RC5AtpY3ADCrKXhx60JBCXRlkMSei+k6O
	w6fazw74TgJlEDZYx0kFNP9MbrMv/wu7E+hJtRTD3odJ6efgBNnMf3szo0VobDUiY+q
	E4nnDH4YDT548Szs0ZVt0IDLbmix69rZUjbOxliU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181802024dc-f383c755-6967-40d4-af40-e0274b3ef45d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dadf63604be8786944d57c37feded9283e70d05ebf1b040e260127523965f55c
Date: Mon, 20 Jun 2022 07:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655711999
