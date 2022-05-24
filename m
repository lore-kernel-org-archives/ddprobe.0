Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5797F4
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 16:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653410819;
	h=To:Subject:From:Message-Id:Date;
	bh=HBnzLJ649kAp9BrXfowbRx6z2ZRjPqJOewWjJRyslRU=;
	b=Fr7bplH33MFvXeP9gBWbLwHUiu6mWihmNu9S5wEonyxJ8dPyvsz3WGsgwfr1SRzC
	wCFB3XcoQvCBtEfBYOTtChw1LGmuOPl3GbAIF14zr0KiEtnpc6I7fHEqUrj+TwzHJqu
	UnyS23HCtHX1ORnH8vkU1oQrWB0DgXaLNzQRcMDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653410819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HBnzLJ649kAp9BrXfowbRx6z2ZRjPqJOewWjJRyslRU=;
	b=iE/xw4KPd9U+CVnFl25G5zGOaWdcywBhdSw5POxcb6xj6564RKfbonnAO+0fNETj
	MINxHPIGpfW2VrzRpKrWT44e5BZx8y07mQOseGcYnI+z2B0rW7uegK9QLeN9SLmQiSZ
	dRgq92IRVnFh4B401c6qVyJZoVGn/BNkKDrBBW+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f6f6ecbb-95533abe-580a-4141-b980-29f845894c6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e754b283dd886c325514c9a54d7697233f3bc720d7ed61481b7784f1bed739c
Date: Tue, 24 May 2022 16:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653410819
