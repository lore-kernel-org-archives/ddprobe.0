Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF46746AC
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 09:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653643319;
	h=To:Subject:From:Message-Id:Date;
	bh=ACeO0JhiZK+9SK4Ob2mpgRK9rM2o54y51QQIZL+s7jE=;
	b=e6xeCFDcJJvWlbP9BclehLN5UqPbRA65yMe5Iw6TipRCKHyX2RhQyZgta2CWVl5/
	Bdo4I0LvbUhp/iDQLKcu3jZfJCTU2C3PYBgixr4mHtvMUzvq+8RuTVCoV0ua+F8lrSq
	gr2TBEKQyPhhx3CGfiDczmrR0ayHaaDN/2vIQOrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653643319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ACeO0JhiZK+9SK4Ob2mpgRK9rM2o54y51QQIZL+s7jE=;
	b=GG/iif9sSp6mkcaYjF+bGs/o/P9AEb+6u1TPq1lVtzUq0VRvDKlFfjsh5K+Q5NGi
	nsKYZ8vtHXbDUnWr3N9o5T0jdWXZCkbRTmulIfuYe6OtXYDxZny2cApRWIlC5auQAbi
	ODfj5yZJ17NnKO7emCkBAzTQK/F717gNM+cYFWS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018104d297bb-23118814-c124-4a8e-af06-6c52c9c6d283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfd33f9dd690d7d14e158e83c027a04258132ae8a89158ad7611dc381ffcac92
Date: Fri, 27 May 2022 09:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653643319
