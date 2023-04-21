Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418975689
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 18:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E536EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 18:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682100545;
	bh=oO+GoJXj9dtS7rlbRzVg1N5Mac1VTzv+C2EEF+vOzeo=;
	h=To:Subject:From:Date:From;
	b=aW5NikPEtimIO3KGll+fw5mm0oNAHgxb4JVM+K7PVhuWi0nQJxpZ57V2uTnCMuvkv
	 Zv8OqlCmI4o1gOTb4i1NZZaMEDf6U95TKSpaNOQXKqO7DVP4eeSM2YmRv+aReoVYc7
	 ijkiDDP1IrOr+DrPj5Fp9mcXibmde0VpKjndmE00yBf/mzoMsSd7aeb2LJRa3Op4Qj
	 m+npUp5xS7HmqnqrW8gXcX3eFM6QlMxsH3NYs1DQpmklbpCjRyK5m4aMa0flUWNq5O
	 6wGKByyIw1PHH2MyzdwaNeRfyqzwjkVeRlHw8dKDDHns2vcxgR7EwUAvWlxm+9B2yo
	 9wDuMmi9i3Riw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91D8C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 18:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168210054581.11155.17810760432934372813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c04e8b4cc7f6cb494859a44846c3976ea44ff435a1ef79bb1b5850105a646a
Date: Fri, 21 Apr 2023 18:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682100545
