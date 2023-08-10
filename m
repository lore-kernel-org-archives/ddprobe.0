Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A70D7E4
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 02:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E2DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 02:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691634188;
	bh=DYxYpSargU6MgIH+j4ndK5WXXANxp6r7/KkI4qwJQ1c=;
	h=To:Subject:From:Date:From;
	b=EssLGA/h3e9iinyCZmgQn+SVpZKjOaH8vR95cO65Hmuv2SJCbZRbwlMCvqSVFHgMK
	 ivrX78BSvJze1t9RhryWekv8yMrrcOz2Mthe9cJ3+3xteAfvpjjze+EC4Ze6e57dgW
	 NOajzGGsMPNV/8w3feJqQ7hxF2jxwSl48WACsZLNfdlvCnoOQyIdZcNc+LriFHccyV
	 ccBQ94NJq9po6oeiyOKFToZm8YJ2Qqi5X3L2n1F92LWgrtmHlmbo6A02cRvOj10URM
	 93eGMWNbdDpCDb38hSl+bQMM5MVM+RIv/EEreDqUtaKpAIrP1HstzvObsAdTnuY4bg
	 dw+Ll5bYeCALA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E52EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 02:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169163418876.9262.9002608775923932441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df947904bb7b453e5f70045416eb271f568063ae5233bca79c785aa08feaa2f
Date: Thu, 10 Aug 2023 02:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691634188
