Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379551FDA
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 21:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655240519;
	h=To:Subject:From:Message-Id:Date;
	bh=lKAmdYqVpyp7PlSfTui4W/BN9mLdY2101oVPpj/LRqo=;
	b=CYueTRfBB5GXzD7Ae7yTq6CjmK9GfX1XC59sddL+WKw7odcA3E91XB3HkzQZDxV8
	KqDRbe1nAkGkXa16NmSSGb0NRj9EWteYg99Y1A3SdQkI8+70rVaeXzWYRUBCglr2MkP
	E9s+3TscEshIEbhyPDgabh1M/E0koLwd0lHcp13E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655240519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lKAmdYqVpyp7PlSfTui4W/BN9mLdY2101oVPpj/LRqo=;
	b=JY9+wgChnILlAYYh2x2sb5FJrEmM/CIjy8aKtIXiU1qpS5sBfb/3fnK731uqnhoD
	3/d20al8tckXHEDkn05hsiyO6qspB+LYJc3EiezkPwubXy6XvxikChpHvbHqeDfStBZ
	N5kEER1sSu1mtvwKQFQKTQ8EqNdNSPmNSU/GJg9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816405ee49-719026ed-a026-4ed8-bbbe-4d02c8c90378-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 172f8c33d4c8facd4331621553e5056c05c134c15c55a4da8e5d3a9ac03df686
Date: Tue, 14 Jun 2022 21:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655240519
