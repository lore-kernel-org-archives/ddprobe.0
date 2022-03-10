Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77ABE7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646902884;
	h=To:Subject:From:Message-Id:Date;
	bh=CmXBJCQCaK94v10gX/+8ZChNIqGiCf2XCO9dT54daRU=;
	b=ebLHxeT5fR2gxCAzN4YEUFgJH9PY95YDSaNer0oBO+Vh00fQyiCKeDWl8bJOH3al
	alkGi4O1Hu9urO9vmSg4y8eKQz+EACjAG+q9/uFhrSl+aFRnYwKpYzIRB4yCJqWFnU7
	zcFcntWZUQGFhIsxmB3R/MH2OjosqhtggQG/4biY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646902884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CmXBJCQCaK94v10gX/+8ZChNIqGiCf2XCO9dT54daRU=;
	b=RNCliqvJqzHZPQXnA6FApN77OiW00J+vFUYd62zxFQ8hxKMamN7bIphNOokSftib
	jWD3rGxfcHBk3XcmonDyHcfM5G5lsoPXBkEWMZDm9fcBMI/57B2Q+aSsOvViSLvatGT
	8DdTC8KBb3Rb+C2ivQoPGIxYvcZGy/uCVKAbC0TU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f730fb986-47a37322-d5b1-4c42-b8d0-4e227ede6bfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 238d6a1460e6511574d628ce73f4c6135109f768c2318ad18c4e33a7e995dcc3
Date: Thu, 10 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646902884
