Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815E57B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646838984;
	h=To:Subject:From:Message-Id:Date;
	bh=uPsaZytVGdc3bMV27o1tle5voL9X1irWyd8PRoSdJKY=;
	b=D2Vgd05T3wpSJlB23HoqFKxVjl/rm+mCUs9ZB/c6jGAp97DZpM7IcXWRZTSMuVmk
	rlCd9oOtLzYveFBzidHgIynUUfGfC7FesluUVGaERYukxTRoS6D7zAL4LCznYnP6dlz
	M9ddb6Tz9u91iT5TEugJbaAC9UqPM0cnxehJ5pJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646838984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uPsaZytVGdc3bMV27o1tle5voL9X1irWyd8PRoSdJKY=;
	b=YrGtm92vrHW02RvDr1skJ45BqCxByfKeYF87hCNMIJmE4bk+FQIFOsx3kTq/oaNw
	2aNcpmURREgHELV0ooPjridSrHywAMfRGZazpapgpyO6nL6X2dlAwXFsTPjyRG24Jli
	P2TguSV/I4hEcENrY18XtGbam7zTGCaNYli8YO8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f40b062-4b23f40a-2747-40b3-b7ac-1f944a49bfe8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b680f38886ffdee6456c5ba6003de1b789c94b99548c760ccef0fd230cf3aa92
Date: Wed, 9 Mar 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646838984
