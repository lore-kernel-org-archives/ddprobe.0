Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AA20A4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646394384;
	h=To:Subject:From:Message-Id:Date;
	bh=5YyOPAHoFIHCOraeaA1/Rb7N30K9KShdIC+Kkca026g=;
	b=mtCtcdUbcLwZBZ2OmIbe5bh8W61R363AErC+aCO73PeFtTEbQTTO2a0zTaVPY/XI
	64KKC+Isv6hx0qYqg4I9hTMagw678eHoD9eI6oG0WNZUCM8OgGZpr4fsnm4/0SH42fn
	WBfItCURRdBrD6gj1PdyxHEK1ROtNiZHhMQb5gnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646394384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5YyOPAHoFIHCOraeaA1/Rb7N30K9KShdIC+Kkca026g=;
	b=KF0gJ26ev1fnD5s4+EDkrtE1x4A+F569j4owLG/choTNS9LJGOKzjHQsRpNFL+v3
	d3p4bHl0qsWUj8Smgi3lnUEgTkvQnsKk6sXNc4EkJ+iaT1qsAX5tmjO89F/laGT6kiR
	GFNunY6QQZSa5MDS0nplfmr5fMf/Aq3d0+PvKQMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54c0a1b4-4c6f4c82-3dcd-40fd-ba45-968ac20894a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6783ddcaf369232267ef5a756f7cbec730e96f6a93fd4b31135ebf487f2d1b6e
Date: Fri, 4 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646394384
