Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EB863E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647880285;
	h=To:Subject:From:Message-Id:Date;
	bh=/0T33gn8HwClaKEDn2b2YALKpiMQKBvMnvrIOEHiuxE=;
	b=X5H2rSq6kE/5NwBtdOauimrRmbt/W0ru4YoyjqSmSvI72Uxo5QsFDrz2A+YYhrEi
	cGotRqWCsrpvu8/SzotUcqb5s8x9gGDJDY2zbfEIAK6X/4v3EK318/58fFcPkf7Z+jf
	q1/sEgwn/34UEH5AuEGpmL5LTgu+1+wA8XwEbm2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647880285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/0T33gn8HwClaKEDn2b2YALKpiMQKBvMnvrIOEHiuxE=;
	b=kndj+Ast9+rq4HCdzNDL5lv+ijFe3zENtpIAFfZsTQwrDUXYwXhdoUXJtxoDftYG
	rKNSGGH24XBabnz6LUfuDnMfqszYseZQqzepI7TLnUUnUDry0z4ItjYt0YM+zmzDcBr
	yIV7NS8TN4/YK8Sa2DbE6gRuuRtlWhspt9Lt3E78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad51aaab-e1e2caa4-f01b-4f7c-aefc-34b39a7f2ffd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66b36afcabb93ff5301c07b48a82eb9b39a2ea145766c6ca1389cee106ccebeb
Date: Mon, 21 Mar 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647880284
