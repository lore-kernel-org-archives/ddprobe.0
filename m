Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A81EA0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68220C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662078653;
	bh=KTBFHIS0mMfNFeopzu2jpA8TyLk6zsJuJ7pZFulMGGs=;
	h=To:Subject:From:Date:From;
	b=qCtEHiX/o+7rVHSAn92iEEH2nb/TSEVNFTuMEy6nFZ6YdCX7R51PxB0WfkQp35UCz
	 2BhmKcDYg4rVlEpBm5q6wlBSiMXGK3XwlHm5Y0OoUqb2xlmUrQbhREZ/n/tQm+7t0L
	 P4C1GOvQnrSegfr806tq5zWrA8LoHu1NpdCS5HoY1CHcsej1rFR/r6ThMDKrbZ8N/N
	 6lAZtOJKxuj8sMxmG9MpwE7RHhHVLCLd0/4VmhHsG3g0gB0rLP9dRJUB0rmNLic2ES
	 9+xqn/qvL3I1YNcQNy3rvBUNGlrL89ZqQjFUlM5BrnNETrK5aAXJS46rY0SsHCsZVs
	 Sn4msWqCGmmjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB76ECAAD2
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166207865332.7756.17070638428688770999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1633f15835d01bc9e35d3fe31495ad9a7fd584a0cb8f8e8d24b2d9d9f995af6d
Date: Fri, 02 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662078653
