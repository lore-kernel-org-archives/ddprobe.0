Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C952163
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 00:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3E9C433C9
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 00:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695083708;
	bh=0Eerxa/bA4BLrpLZM3ZYQKfkCdRosfxkwsMC6/PTum4=;
	h=To:Subject:From:Date:From;
	b=BTObHzVQ9TwHnsjFF2zUkzoafVRXgAmheLwwCT5vGNWDazyfUY/shX2VGIkQEePuU
	 MZ4DtqSkeaW4p7dD9wyVJVumWSCuK8ScH5f+0okUJq1G/OnZgV0UkZ81PFZGE6PLCV
	 8z0jzzPgxRmWJKLohZu8fevr18BrfK3YJvn2UbdgTTjejROn4GUrz1OHgn3HcB939N
	 z6kAnEdgbnrywt6bUwhbmdyr38f7jgMyBOsQO3ahL9kpzcNUPGdkVPTnq56HRZPNf/
	 2g3dEBDcWjP2y616H/KyCoEdxzxmpscP837deUXYeMnOH+sixNhRH4RmDjKwKZDi5h
	 pYxh9dXjoDD9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3C5CD342F
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 00:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169508370869.13770.16448102021778815584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7b60aa9a67ad0fcbf6040645cf7e0fcc90fdedcc1e774e4a1d6908c0731f10
Date: Tue, 19 Sep 2023 00:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695083708
