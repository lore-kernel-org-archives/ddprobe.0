Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B347B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645608384;
	h=To:Subject:From:Message-Id:Date;
	bh=C2lHi74tM7t+nn7PfUIz6w6m76HLIm+kKkPheCxoyW4=;
	b=SwJTQB4csfHHC3qgX6xee0YgQbI6oz37EpJo4Z2bswspZ+GWzxxIlzmhn9irkTwe
	XCJxbWPHAng4Qi5p0SkE0Pqz/efq/WZ3/U/n5/dXu55UYATizPjbXXmqWXW6yhgIX3N
	f7A46ew+jyNhaZEuIjW5oWDZMf/gfIsgCOYXHhXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645608384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C2lHi74tM7t+nn7PfUIz6w6m76HLIm+kKkPheCxoyW4=;
	b=jNMspN2/xknhQdCwRf7+WMLFLPXmCYEzUfU7CDkzGoIhumcQ2qEt4f+n05/iwOHU
	c+9MDeDf/TJNGJkMam07UF77uEwSE+aSlBx68MdCE3SpU51n/K818gKATEvCL1hSiNW
	IQMIgoO/cA/s9TCzlr8Ku6UTp6ZsemJqsL1x17t8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25e738fe-7a6db3c3-eec5-4116-ab11-8dfefa5b9254-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bac290c6d34be1200676c8682acb29111ba45f5358a7c76a5111c452fffb816
Date: Wed, 23 Feb 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645608384
