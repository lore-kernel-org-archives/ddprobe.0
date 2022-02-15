Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3F97C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644898585;
	h=To:Subject:From:Message-Id:Date;
	bh=7qTMz2WGSyMEW+NP3l6ardAOxTq2hIp+frnjOcLrczk=;
	b=Omtt4R/+VUY74kTAFz12Emgfc2GISezgI5STbZEKAW1lrd/hz90iPhH9uEn7iXPr
	u0mGGNp96mWuLqSfQkqE64zB/Th97fDWVTbH0SOChrkomEKuZ3RvZqWyv7H05+R1REj
	ng4N5Xv58ihuG8OOX168Z9TmoD+5r8VQDgMISnDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644898585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7qTMz2WGSyMEW+NP3l6ardAOxTq2hIp+frnjOcLrczk=;
	b=BYEM3PzuKiRLwjJO+iqXxjqbc3jhCaEEhtN/7lqogwGABmp/A582Z5UMjpFcsxD1
	YTJuT11ZKxNJDl1l26sByi0Gi6PxsAhEOlpMJU+SETWzFYUpQRxsyIOjPWrhZQuhaz4
	MuFVFYqm3cVsj2ZlxR9bJ5D3b4qSbPb8YkSFvLuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb9888fa-c7e3cb68-d64a-4110-983a-c596496c3165-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5864e776a23b225d4c74295fdc62f3567492cdbeb2bc5625699c20a8cc13535
Date: Tue, 15 Feb 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644898584
