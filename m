Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B0410EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645752384;
	h=To:Subject:From:Message-Id:Date;
	bh=4AqJgY4tAr5LHI5nA2eAXY9JgLXrfzoZyjOL+Xg9yM0=;
	b=eNjBNyKj2lr19SeYnr6PLqGpm74o573X0Q27pAvQkaqjYwngjH8ZjdrFlD+0VX8a
	yX9JM0PvlbvBgl7MO097Tin/0rYd7IPmw/dBjizm503vQ3MMwrpT5njel2DwEkCjKGO
	kNWU7aV3bD+aSmoUevuguIVk1vCTpnTEqgMTDpAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645752384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4AqJgY4tAr5LHI5nA2eAXY9JgLXrfzoZyjOL+Xg9yM0=;
	b=ZRF+joy0RYa94jMpiP2MRq+YRlQsAG+xSVwRy1SXvJlOByic2BfPscH21gy14eRT
	JCg7SC+yynRg9wwwBo1txgnSlStabM6EO7DPes+Xx1iKnLAVMV3ZGQ8pujYlvhW/jzb
	ZN60JBTnuIc0iaZfoGzR8WubXjAIxLqC9G/XUfS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2e7c7d27-195cedb7-c5e6-4273-abad-ed84297fd368-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4006a549de28a7eaabd07ba26850b981f683ef67e5eff51006c45cb7f228364f
Date: Fri, 25 Feb 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645752384
