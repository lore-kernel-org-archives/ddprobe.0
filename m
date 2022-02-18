Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 918104C68
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645219584;
	h=To:Subject:From:Message-Id:Date;
	bh=D2KYrzCYQ44go8iLyn9mKBCy42dBWN2mlsfXKiQM5+c=;
	b=NLm4GyPml5PZKQNwYxUPyCWiljk2WA+cNyBgUHOVXfTBeUqxtUCWxJNyYloyfWDa
	pBwEdZ+mSzvUDps0vyx5UDEzdusykMcZVc+ueIoLS3kNdE0Sa7vQ1pDkjKNdmasUurG
	fcwUsJm9MsLB0cI2Rv9Eej5OsYkFlkIqZo8JNPdQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645219584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D2KYrzCYQ44go8iLyn9mKBCy42dBWN2mlsfXKiQM5+c=;
	b=X/9AVDf06+QM9X737R7xxmJzIbKqn2FbuXlIb4Fo1GOQh9aE0DOs5HqUvXsBUtBc
	PVlPeSlfekxfday2zajjuL3Kvgjp+QBlqVJs1W6NwIngdb4n+t2A+9Xqp5cVtfp2aIe
	Kzohd/dqkSypdF54XgTpE+hqyFDh89XqxntFYuKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0eba9b0b-04292d32-3442-43a6-97e2-e2a8c2a2776f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ea5d3badab1dd0b61ea78f1307026d72d5f1f20d0022fb71088448d78cf764e
Date: Fri, 18 Feb 2022 21:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645219584
