Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDD67C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646361085;
	h=To:Subject:From:Message-Id:Date;
	bh=4aTTem1OJ3QpgDLmjKeQDmQdz1UqnuRIlwTwDf/AGpY=;
	b=YJh44LVJl8yIvFTZ4/wp2vACo1q5B1idIus52DdoCdt9Z+5dJGGhvAn1gTaMjk0i
	UurQqOE7ym8yxcfHXB/bv3BVc8tUN5N32C4YVdHj+JukM/G7VvQnKY379T1xbjjNfp3
	cEZf1tkt3rtfrfFmbybPjEw9fSVgaUw3HUCe9wt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646361085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4aTTem1OJ3QpgDLmjKeQDmQdz1UqnuRIlwTwDf/AGpY=;
	b=Zc2rmLSe0khSxeM2za1tpM1rtKdCJR3s/NzgzrXcCJueF+P6hEGDYdfvOt7cK/XT
	QwLfNCS79a3BSB+F0XhvD2Ze/eR2rdiXCYhzWG/f4pQR5Hv/gmNrGSRSuttU175vL4g
	CWuAss3k7xKWWKBSm/t83G2sCuQ9liVOwwo66+6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52c4833b-07a9fb1d-d4b4-41ce-8e8e-e4456360718c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c65f94d75bb8c91de5eb54e34e59e530c17a7a4a57656c205db76d8e2478777
Date: Fri, 4 Mar 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646361084
