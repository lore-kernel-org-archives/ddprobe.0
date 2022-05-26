Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E891A10EC
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 03:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653536279;
	h=To:Subject:From:Message-Id:Date;
	bh=knxNpyVZE+zalo0LXQ+zMVpHQ6PBAe0fGCcNIMLC5OE=;
	b=SxNe6IXJFdJbZBeiJJ5B2ebiGXdltbNbh7/alz820lQPpjnvwvurqYIlkN5pnkSB
	aulFgq/r67eN3tEG1QWpgOZC2Xm8tj8RiMWuUfbZ2JEsd/E+yx4OU9kElKsSHBbm3J4
	ukQwXEEPLSjbhiW/qqfr2K/UrJyiWiC3OIFKFl2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653536279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=knxNpyVZE+zalo0LXQ+zMVpHQ6PBAe0fGCcNIMLC5OE=;
	b=fvBHIhITXdZpq9lfkKJcMV16YXaPHa1qWRZdFWKsaxN6ejWzimaoECuDrxl1KQAJ
	LbmcMmoUoQuDQn7mW1k6yu75Htay3wpTGKpHSx0+ZNiV09TLR5/NTaAte52dQ3ZFiku
	u5NRjfomNnzXxdex5JD7y12tZclB1u6wUajFnpjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fe714ac1-29102831-62d0-4305-adff-2d89f190e7ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d81a8a062fe9f1a72f6b2199094d48680377f61a7458c3cd6641b0e491612a0
Date: Thu, 26 May 2022 03:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653536279
