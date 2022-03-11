Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ECE17E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646994984;
	h=To:Subject:From:Message-Id:Date;
	bh=2YgHS4RKUpDRiexAkDIEfV/IzX5AmyyrGMj0fq/Clc4=;
	b=ebuDQLILvG4PYVUL+PIjZsNC0ppfhKvkOuKsqVBKZbdbxN6zdKxGnr7T5255d2Cn
	giDP3X2KH03qNHrjbcJLeHwedkJWkuu9gSNwGmOEEIDcXgMQ1TRx0Mm5jrAOHZTJGC+
	EIjCoUtZeCMCw7TDBcvYGqJs/RBxDQGV1uI/HgOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646994984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2YgHS4RKUpDRiexAkDIEfV/IzX5AmyyrGMj0fq/Clc4=;
	b=iBuKtb9B2UkGBWrkMY7hy2pv9be8b99UIl9JLnJzVX3nQoANYDA4qLQPtv+lIBTs
	mbQ8Eo/pppWdwJC4kphq8O4woKsomL8VHoxlZYPhHK9mRJVV3gEqql1BI/XtP4whOjQ
	7lh0dI4svz60KmV30x4zmBTXZkFsIvm1hZq6coAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f788d0f2c-2d7849e7-9073-4659-9d52-a9e727fa9593-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e45561a977224d35d6f3257fc1d056a9ea05dfbb7e152611196a077bb7bdb96
Date: Fri, 11 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646994984
