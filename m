Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0127A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 23:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650237418;
	h=To:Subject:From:Message-Id:Date;
	bh=PGgL+3YSbBAWDDZPo6v3nM1qe98EsqKPCkoiq4tp7ps=;
	b=VK2FY2mrHtnIS+dg0R/OUEPKfejISIu72FfLRh4ye/Y1Cp+O+Omu21g85wmi6//A
	rLkA5uu+Y9NzTi+wlQITfkRNcwS72cIvIS8wCsCZfPGJwos/9raY6bP0o1cEkkNnYKs
	EK1hTTjOhScm2tXT58nDnawbxi3uDgDBnDtT85gk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650237418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PGgL+3YSbBAWDDZPo6v3nM1qe98EsqKPCkoiq4tp7ps=;
	b=MX5STpQjzslZz7626ZAskNdzNcA/J/KJOakackW8hE66bIy9L2yUe2uu/d6JNakQ
	0RWBKbTUh4Hptin0AqviIFyiaKkWBfy2puej418tsK3CB51ma9tog5Qs2+GBVmiIo+D
	VA9ycilwfyn8yE7kQaExv/EAzaRLOlw7i3fBnjE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018039d0ab25-0ecaf2b0-841d-405a-9f2f-1487336eb122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7caca8abc0a27a1d54127095d922202975c0336f673800900b4b1cefeee76668
Date: Sun, 17 Apr 2022 23:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650237418
