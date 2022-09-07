Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF47C7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7B1C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662526853;
	bh=Pi1hlVN2nBrbKcU/fao3DPr4x7yWU7xWjOLOqxi8Lhg=;
	h=To:Subject:From:Date:From;
	b=uO631BH8wanuesyRwgWnMCSqpHvbYZVt1b+jX1WIP2N0prVzz5Madff9GsUZU93uX
	 MdzYNkGhiSUpNIjt8H9FLwc9lrtSYMAASKy8MTXCGFg7rWGOhBWRvqZRL/XArWHMoe
	 KAaQVpuUJV/Jcz94wolXu5EBRstUkqJ1IRYWNnWcI+1lUEpxFVbVAu+eUpQLlsrCx8
	 S5lhbaoOpyGxkA2VOHFLPlqRaYtq5GDMRoL6ZOQkNiJC5IbGaTEEh9+JHyYftlXb8B
	 hOsk9rJUsPIqt8eu8z6vTT/Hi8gpFOG2n1OfXOMDXRxyzIth2M9uunwmCR+nG+CqE5
	 NUpFCKQuJHj6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCBDC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166252685335.26933.9551998856966752270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228fadf673acd30e9b2f193a1fdf3432e1bcd7d757561fc99f5ac85a117e392f
Date: Wed, 07 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662526853
