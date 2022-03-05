Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EDA1B76
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646495784;
	h=To:Subject:From:Message-Id:Date;
	bh=2bFayIUST6mz/2KvDRSBvEM9TCjwdziD3kxoF2jMpo8=;
	b=RiKCpOUENMmFY2xXoqVLVaxyYqDJZlbOcIMb/lKM5bpunnxuLmx6SiF42MMoZt95
	JAPda68+35hDLZFg4tghOgVk/1MZgGoosMGZiDvSJPE6V5848bh47b97mqKFzCqR0Vc
	ZTd84zLCRE7WicMG59M3vr6IfunFr8bc7UNkKYwM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646495784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2bFayIUST6mz/2KvDRSBvEM9TCjwdziD3kxoF2jMpo8=;
	b=H6xHmbNa2umgcmVwN2GBe2IlKXCJb4fXK3bDBY5PZxzQ+HaHi0JJERIAHU3DP3UT
	mCava9w1OPQZAk3zb2tcNZzgdF2dbPiKqJEL5I+/Ey7XepKFSDDX86+YzCI5+NRX/sZ
	W5/LLv1WMgDtA8y7NLiQHnrIVzMJea9RrUh4DV5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5acbdf40-94e155c6-b21a-4537-b598-1acf1e8698a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34d006a824da166567adb375b1f0bb4c5a81ef896edc50c8440c2e3d77af23d9
Date: Sat, 5 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646495784
