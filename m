Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506FD1367
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 17:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654278599;
	h=To:Subject:From:Message-Id:Date;
	bh=YgPGq1z5sabAXJ/4d5cF/An1QTf5BgUu9RxlPWUpAhk=;
	b=G216yk5/W34dXG+DHz+qnUyrB/b2ckmNdL7pvtIPA5sbZxQNSLSaIYF8pIjO3uPU
	BCtfJlUJaEOuavxYrJAjUTs374Q/US0MxzihyoatHaF8j4VtzJPTt50yMsJHLFyDnD/
	U8A2TWoQuQKp8jMvArIR8NOhCWDPjjX1kkaFO3hg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654278599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YgPGq1z5sabAXJ/4d5cF/An1QTf5BgUu9RxlPWUpAhk=;
	b=jP34XYeM4AMwUSazKJOPrDvisU3Dapusq1Z/kXSjtH86pPA3Ox7trChvNXiebNRS
	xezTVg8E91phEbTWfv4xIiILhzG8RC8fjMlsyFn4d30Ehd1//pnu9dB5TDA6jLQ8G15
	KDSxq5GdtYeX3nDZChaH+xU11/T6zAbBilM0JiQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812ab032ac-ec9f22c9-7576-4cd8-8ba1-5ec716567006-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3246a6fa2dbd2f546c4c2ce0b3ba63245c062bdc82eb79054a9cf4d529a6f18e
Date: Fri, 3 Jun 2022 17:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654278599
