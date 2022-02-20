Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A635EC8
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645386384;
	h=To:Subject:From:Message-Id:Date;
	bh=gx5RW/K2MYwDKPo1UxFc5MGou/PkTAh1a3t2IQ+KsMc=;
	b=emOTxyX6WtOIEn4PatPykyf9TL0vHMSbhoYBqfiXOuwIE2kAx9E5YAPke5FCILys
	RoCeSIxVIgUY6AiVo67jN9Tc2ikbMnAc2d70c7RmI8YNNvTVWU1XJ/0PwRT3xTNYEqz
	3/dbEeFK4wH64bEyhFvOhldliAKClEA4fc13IQDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645386384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gx5RW/K2MYwDKPo1UxFc5MGou/PkTAh1a3t2IQ+KsMc=;
	b=l8m4XjlphsMti1V1F51Qshsj67vt6eipopgm7P/V2yHdzNdvhg9zb0as4nfGpdeu
	jtzpupMtAMB/LQMRuVwLeI7Gdps3ycgb1gwzDl5PlUD7W8QXOqzeAxFF0fhq2jhsx0E
	c0v9xkfBQ1HLSg4IbgRhz+NFxYD0zswvLyvB4lTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18abc589-81bec50f-fd41-4073-a683-0f6dfa51f028-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 016e5fd8078709171a9841b2e8ed02260373c89a47700bb33f0d3c1adca394ff
Date: Sun, 20 Feb 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645386384
