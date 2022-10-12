Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C4F321E
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB3CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665610253;
	bh=nP1QjafpGWnaqJSIbpThZq5wWeHqR8/nd4FVQwC55l8=;
	h=To:Subject:From:Date:From;
	b=RQ4RHa7ij+Mt5wzAE353mOEnHfTbS9jwBTs/O6TNZ7DCl2d0ZBpJF6JIWyB4O0KN8
	 wPVOPw7yxpNTwLft6MSQyNg0VrccXNUR0EugO/QzVExgrD3GE5w4c8oblmh83uxUuO
	 mVK/rKVPK1y/0ZRhNwDzb22annxo9Lp5NHKu3z+3qotad4MjuV7rg5ZkN3CQv5561G
	 IwMQq+2qxmBAc/A65FSQiIIagotEXVc9zt8CSMKRYbCTAII04ITdxSGQWY7wILVWxH
	 eijYg+e95icEAxyF0qEA16JZXD06/q2T0X8xtff2DUm5ywqrVxzuJBqgoXBCsxnFsd
	 6c+aIjHnywl7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AF0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561025334.6064.17955516470964888237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102da400b89dabbbca27dc04ecea157e605587018ae71f59c209b99558d612be
Date: Wed, 12 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665610253
