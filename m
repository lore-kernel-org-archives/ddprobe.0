Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9458B161
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659226252;
	h=To:Subject:From:Message-Id:Date;
	bh=bl3D1vrus0HoKJ8T9+eTcpMh5olqoApfycTPdAclkHE=;
	b=WHNl3SBq59ZbTmry+XKLkwidMoATiKtwiuLUfhj9sPY8MOC3opwY4MOHrCi5wbeC
	f/ClLQAVUtKap7+Se8tEu6mfOQWMAO22vQv5gZnn5LOYe/cW/P5W65l/zjuXOqm8eIR
	b0HKzy+9MzBsve4sMZmF6yDj9EBbKir1tWmD5phU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659226252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bl3D1vrus0HoKJ8T9+eTcpMh5olqoApfycTPdAclkHE=;
	b=hi0d65V3hVYuS8az6SQWGd+Uw5gNmLOg1ZJ+HWSRkb0B8YyI7NErX7XSSV/Z/jIw
	XeKoQZ17nEthW0Q1oUnzJRH9xVn1i76aAo1noeOOWNACRIU4FVuWwLC7VLqnmbT3hX1
	kih4qsGWVwaqfIGYWmLO+XROU5XvQ2t6I323Z01U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251976528-681ab673-e14a-4df6-9f82-249b331263aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42c3a5ca464c21268f1f8d1d574368235e16d19c90b1d9903bcfeb47e048e7a3
Date: Sun, 31 Jul 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659226252
