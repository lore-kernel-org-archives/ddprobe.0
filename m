Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A3A2D73A0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777184854; cv=none; b=K5PxZK0CWiQ7G3QgOmDVlS8AukYYL33/oOktopHZIfU0UkRP4ok9JcL0XGE+4ST6XR8/G0ujPOhqYbRLNJvzu3L+Uinkc8HYntMf4p+Amg/e5JxFCKFt/nfoxVmTlpmHU3jamoj1CSFBWKesGjCYHC6tJsrjXXnANTwY1MvBHdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777184854; c=relaxed/simple;
	bh=hBbOmPAuS5UxdwMAkgS6KaJyfCf8lIzddoiPl2qNtfw=;
	h=To:Subject:From:Message-Id:Date; b=nfB4AFf0UuWIGEZTagXpQ+VYmTveYSwH+KXIPcSBXEaF0jAi4+z8NuMICwr5O8MoeTz6dA7JIG8W2NLGzVjjuY7g32qvxbUXjAAMMWK2g7zH68MVcbmKCrwRarzPY2IjCSHec0FRTjn9ee/4yNeg6Ou79X5S8mPiXG+9XxfoxRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLk1cr3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLk1cr3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD13BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777184853;
	bh=hBbOmPAuS5UxdwMAkgS6KaJyfCf8lIzddoiPl2qNtfw=;
	h=To:Subject:From:Date:From;
	b=sLk1cr3GFJPNZrrbRxzZMsBtCrA7pF+so5WpP35rAEjG6KMaj2n2p/6wU4BQUcNdJ
	 HxrmzQg68TzTql/Xe7qItrCNmBzX97Bji8yxPmaquh0S7bfgeD5/10jS/hdCSCEvbH
	 EyoHWuRtZ9uZ47pEUH3LnBYv+Ro97nma65v62v6Ya9jU8ruVwWcu44Qwlni13ZaKNi
	 JGxIp20/QhDa5IiGMtZn/qlZBBztlWB03gv57QefRQHzzh1u3aPt6W/dtr0JlAEr5Q
	 24Q8cDOoUGdK7ZLEIAHU/nF68TxyTGq0FASnoGi7V4j0qT/9gQbHjVWaGF7Zku2IIn
	 TEYuAjiPIplNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC7FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718485368.23417.18339747661108126937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc54a38c05f276708ee6fde6a2edd8982d17c430c2f8f48cd3ac7dee20d0a4e1
Date: Sun, 26 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777184853
