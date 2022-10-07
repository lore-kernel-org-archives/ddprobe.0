Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B479AECF
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6478AC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665148253;
	bh=Mub8j0vNoAYTBvlHRzL/3O2kgTbS2d8o5UfDgLc/+xo=;
	h=To:Subject:From:Date:From;
	b=Ymt/e43lckT32qcemeccKq89ng0MXW2LbDNlM3RA3uTHdhnJFCdzxhwkvOEVUV/yJ
	 crb3EFWosGzUgs9ghGly+9PMbJzIRWAEBqABSZNft1gkCWNdSuYtYxTRUsBAs/JDXv
	 hoz8SasEON9Qa+Kp+3+Xd7HLxoLYtEeMeqhwWcWLCcbYmxgjCPUgJ3AOeNTRvv8Km9
	 vkXgPvpQzvz5dh1KwB9mxbhWFaNi7OE2Zu8oouamhaiJ+lr0SlOPfhj8Zrr7tdXpeJ
	 bJRq1ebHdnsqIyZwCGggx3lXow8uGV3RUGD2jJbhv8z03THLhLYBDjPTzhmyCXwU+n
	 Qwu7ZSEFTP7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC98C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166514825331.21564.7536958558664901634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcdaf9e89c99860b29bc2f8ab9e490da78c88136f9433190e7a50776f64162e5
Date: Fri, 07 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665148253
