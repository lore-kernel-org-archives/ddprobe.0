Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65ED22F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645925484;
	h=To:Subject:From:Message-Id:Date;
	bh=trT+qxzJ4FN8b3M3DDRSrpHMY5h0QVfZ+IDC3U7/0mM=;
	b=bI6OIK/X++mtFtrhcMVnYZbhEZ5ZAV0WzHC1W7a2qw+awVovFg3ZbJUo3608Paxf
	dXp9N9+gsVRxT+/f6ObgmFRYpLDLieq9YlPeXr2CXA4NeJinAMlrRBDa39SkwUT55MC
	5YVKJlExZtG59UXDe5VjztfL57V2tfD3abKeyuLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645925484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=trT+qxzJ4FN8b3M3DDRSrpHMY5h0QVfZ+IDC3U7/0mM=;
	b=YDtXaShI5Y2p8fy4SLWQaKgBgkbRZpIff0DF/KRx3pvEA/AZezWpxMcS8ugypNeN
	4y7gLRCOfnrmyoAFuj7pAyP7y05ELjKFXsB8XMYr4ouy1Ysm37pCy0swM5jFPATPUip
	49f/8ltBcoaavoYQSFpbW783sLwNeD0WMDql538A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38cdc900-d74c015c-0c20-46e3-b335-861ea83563e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ca71ed53a994487d0426fcdf652c541171c3859cf65e38299dc60c28cd717ce
Date: Sun, 27 Feb 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645925484
