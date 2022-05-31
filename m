Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D7A7E
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 18:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654021559;
	h=To:Subject:From:Message-Id:Date;
	bh=uEKqcmFuCfaaXnn1LBeHp+qm5K2vPIdro4YYMMTCitI=;
	b=ED5Sbyo9e2vxUFF0KdL0topUXTCj45cedH0P68e4gSpUs318CwCbeb7WEBeGrl5q
	or6U9oZB1kF4Pu299kL+ZY1XxyJgl5xsxvTAAxxeZe56bPi2NYknE0o+nfczgxqKlXQ
	fnOb7ULDuPDUTheFU1coUtRBcpQGlA4yTaBhNTE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654021559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uEKqcmFuCfaaXnn1LBeHp+qm5K2vPIdro4YYMMTCitI=;
	b=Ke/kUdm+vXW2AcoRCx6dPE607pxVAW1HW+u721G9n2n+fJg5ce3bA0Bv/3Y/dBkB
	ThAKdWsZn9Dw0td7IVV7ZdDKE6wdBXU7Zigx094w/ofuhFZfS2MPvK05YUISixa6Z9w
	w+sGn/ZWupHt0oO58dAwNROQBUIE4L5uCrqkFZTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b5e13da-d01ad1b4-1f59-44a4-84d4-6f4701f6d7ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd58418cd7a47233bfa824af9c7c53b8fe7078d87565cfc32eb5177c611d0a9e
Date: Tue, 31 May 2022 18:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654021559
