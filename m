Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0686DC153
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwcpvXaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84C33C433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700632096;
	bh=G2/SXP6mSrGMBwC0aj7RcvnXzzlArLcSEjcxwYp4YqI=;
	h=To:Subject:From:Date:From;
	b=CwcpvXaJUH0RNbde8FBHP6BpCmd3eJcLx25Z05tJg2yxNkj+T3EK+HDwqRPe9oA9t
	 VrTr9AyH2HndVeWgMinXT6E6yDVW6KDKTZ92l71m1gyghFtNmrfLVQY2r/KsO+7OE0
	 j7bsvuJrI81CwBygXV5mOgFi1Dz8abzUSdSNw/SsD5h77/kAd2M7Pw4aMKQvrc0aSJ
	 hbgh2kUtJzg67F6JNc4f2MKZMY3RvODVML2L8MO14hAtGT0koECBMRlzP3kIbWKWk7
	 AlEJMPuuUwFQA+iplxRMDCcBbWVaJiWaddleS7lD6yF6D/ZZbjuCizj7gl5RsGQqZt
	 gnQ5KHWA20/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B5A3C61D92
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170063209639.20399.13910722100745456427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba775d88e7c9c377ab73ecef178e0fc6b5626cabc033d507ed78ea1bd42411b2
Date: Wed, 22 Nov 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700632096
