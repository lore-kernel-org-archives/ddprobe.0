Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9AC2F2C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74DC8C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667670054;
	bh=wLqoQxF8a+BxNw0RWCzTAeumhq+2CBSqPVn0QE/Usso=;
	h=To:Subject:From:Date:From;
	b=NQxU0qFuGnA8i/xcNy5QGZ4rFxZoxkymZ+FyU45Ro2o0oTeiDB5lS1Hr+RC3sCM3/
	 VRsGu86LC93zbrjNkczWKm/23VnmKkd3VQkGDOu+1f1O0+zxnR5g7trVupz1RwBjwl
	 Zq+HS2Adjddyb+xs5HjcztxBOQ4RUYxL4y4nkFxA8gLoPeg0HQvg7v1tQFmPsbnjxx
	 YZk10WC4x5Tlx1Tw7tFjX7d+79+0MasyGohYg759Of2YEkgX1VPzvGMjYUAbUExy5n
	 PXkCe5MEK3+aUKQYIY3DqnRiCu2YR3FIAXM4mI1ddwnZK2txqYl6mXZCB4JUyU6rW0
	 nOXMagBOdKkkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553C7C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166767005434.27656.11806429996646619156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c0e5b1d16b2ef3d692a36aa8d055b125c154f16a491b7fa22acac215ef15ff
Date: Sat, 05 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667670054
