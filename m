Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A782515AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647574885;
	h=To:Subject:From:Message-Id:Date;
	bh=DfICxQxv8lLBdnf48h8hiflZTXwXnTr4U4400WlQn0k=;
	b=NTkVWDpLOIQrvE12AI5Q+wdktuwU24iUTscb/Kb10cfHSIVk7NjosK5b9GLlc1mZ
	+ckvw7roxPIHUsCD3Uzvv/V13dWHIIxP7q9xp9tL7d/oVJkTRSFdOvMM/2IvjUbRA0x
	iCKieVOlvre3SxxzIU2Ik+K5CuOVnqTuR+xghj58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647574885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DfICxQxv8lLBdnf48h8hiflZTXwXnTr4U4400WlQn0k=;
	b=WGZrUsuXrPlHP+nxquf3ZSnAS5egqmpX0D2UwNhAKBs/pww50tDNH/0agRSOl5Hd
	FUFgC36aNzCrxP28PMBHF7QvE47oewt9p/xw+ZtEZmiieuZ/fCDquX2K70+WZ3B3j8t
	CGEp1cLf//HjO8PUzul+eTmaP5RQIdL1TNmcxNLY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b1da1c3-804c2686-8181-43e1-abf2-5ff78b49896a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df0a5fe9b750daabcac36025fefb3e6422771a7eb4229486af9133a53a693531
Date: Fri, 18 Mar 2022 03:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647574884
