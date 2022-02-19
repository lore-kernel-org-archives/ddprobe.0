Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6755383
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645269984;
	h=To:Subject:From:Message-Id:Date;
	bh=kghiaUQ86MLt1k2fk8H4wcGgrny1dG/HUazmAOSJeXo=;
	b=U8LyLml37Ws6RtlQLBZyhbfb0joDhze13XsLmyj2fKALihBTpG/nbK79GedlSrPu
	ZsImvfy7zjMzewqlANeyQq1mgyWiaBbgI1MbhAnG4hold5vGbbl8Uzjh/lqGr4TOtuX
	Gt64BHB2yjPwqiS7G69EWZkCYQQ++yfTDnScq8MQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645269984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kghiaUQ86MLt1k2fk8H4wcGgrny1dG/HUazmAOSJeXo=;
	b=fk47ev16Z2jhqqAUKOqIOf0RWjcPMGWn76TjfVi2Io+LP6zjjqoW0nUttqdhmrU2
	M8fJmh1p4yc3nJ7mIH3bfbz0DnJ222CXk+/8pEWniLmRuJXBr8+lrZqDPGi5l/M7a/4
	IWMnLDP71a1m4LExnP4JThsv2zSphzSspo+pyQ3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11bba5ef-7fe03098-dc12-433d-926c-4fd68159f0e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c134581984d89e5f74150939549507708129a6550c752d2a55b91174d6bed9e5
Date: Sat, 19 Feb 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645269984
