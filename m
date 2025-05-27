Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD5010FD
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748390394; cv=none; b=avspcigYyZhfc804WyPZNdaQOpPQ9wvpPuIUzI4KpCqq/iGEkO5MP/TSBxZMHw1rFNpMe0MzbMy3hggr0NZc0l/pBB/GGv1XhW0+1n/N87BzfFB4oCZ01T7ltxG5WyU8jSLHUTGsfKK/iQDabHwBrotSEW0AfC1o/jkvfxcVZJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748390394; c=relaxed/simple;
	bh=OpsA0CfK4bybSwigAZBfV2dp4oLcgFjj1eHCKPJQhqA=;
	h=To:Subject:From:Message-Id:Date; b=WZqY4I9F2MMQrTSr0JrWr29SNln1yBBcdGb8W8sqXgwPd39yoQqMA+DRmajuDZiGomFEyHWeuGdGWXfC9zViUUwdd7PecJnZ3xbTCeP4+bzwCjFBuMHSDJ6/loBe+l3+LH5I1bRrT87GJcCNDEnDk0UZKnyh01hcNne8HsNlOlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtEQQsl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtEQQsl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A4BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748390393;
	bh=OpsA0CfK4bybSwigAZBfV2dp4oLcgFjj1eHCKPJQhqA=;
	h=To:Subject:From:Date:From;
	b=PtEQQsl234MK9Xb9vnK3qbmkc0dZs5slleXW1Bluiy/qfy6j/8Fsrck0vLoH0zJIB
	 rlsa91qKAC9t24mR6XbQeP/6iU5hUH/11wZQlUwrEybPQXqIN7a1zOWJAuhzV/JgUK
	 QXsvOyNVwGSlK3wXgHM6LuRml5Kz7CufkqcJzN1xrb9vehhGqZOzigUea7s17k13CU
	 pu+Ecb09RTQ602IVsKDfAQ0lNNeFhn1Mr0mPFQnkzE6D4M3JrC13Bb6sSS5duwrTGq
	 QdepnND07YF4S7Yycl/RK3UN1vT3TUaadYVO3RJSfmjZ9ZkQVo+wX75vEIyFUGIsPe
	 DWnEIV+6NPjXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A4C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839039358.19874.12428837519671457392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c79b1f8514764337678293a61a2977194753f60ef94b2e0af5d84ebe8e5f6a
Date: Tue, 27 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748390393
