Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91EE27C
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66D84C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669688454;
	bh=3ut1GNz8YJ2Y/RsLu/ARzki6ZFQxrgwrFUz4L6W+vtA=;
	h=To:Subject:From:Date:From;
	b=Lvreu4FatldgoXF7AMx27a6mFb+MlVLbiTcpIRRSHGkhLQPAT4F8aUPUaT7RJRooO
	 osSxdVMO5N2e5itRJVk4gU/yW6hbUTJcygaNHaS2+QKtWVbEIrEVjAThsYeazw4bHu
	 00Op6sbCWEINUFlqYwHXpVoe+k8URqGvPvs0RVngVTaDF1JuZsCuxzRocQBFhk8+LJ
	 3ooU5OlVTl2qdF/RiInocfKd+eBXxkF6m5l0jZqlL7aysCFw1U6Hpk7FCnoRvf2CmF
	 S4eOj2OrNrQ5SW+vPQXl4xONYo4jGoxlTpLf6nu8/RPbddmN8T3XAP1HnGXbo6atND
	 jS6NrSBNvVn5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538A0C43217
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166968845433.32358.9462436524413343769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43540c0d1e0abb2998b9acdb0243560e79792c6ce379a0c996b89a3e94a62c2e
Date: Tue, 29 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669688454
