Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACF42580E2
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761289195; cv=none; b=b40v4eHWGVkPyXHN8jAy8ZKL1aQqvKO6SlKybJ0GvjobdsAsTWhPAx+zvZB8fPsOdxk/COVYa1mPbpJzIUkYDoddATbSYdlEWYkVYpPQEpDVvycFzeiDDgJC95Xg0wPLMkHtaSmLlgQqzSjuXq1267hEXkVIvM4lRGVrzFOeb/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761289195; c=relaxed/simple;
	bh=a/0Wxxn5yuNL/gr7OQZarxoq/vruaZOCJ0RUHNJKW04=;
	h=To:Subject:From:Message-Id:Date; b=qj1Q16z263Z8oUj08nMpnLzcGSxX/ZOV/nd5YvDo6QkPdcC8rBu8+q37fdGTU1Fm+KWJjkpqDPag9rw3UunfTkXP7wH6PYC6xP8uiUBAV1+YtZJW9NxWNPGRhCsIjLY0/lJ1Sl/NCXxCQzSg9uXuW5nw8BCVn8Sx8oWKJIzI7UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RacseFiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RacseFiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E732C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761289193;
	bh=a/0Wxxn5yuNL/gr7OQZarxoq/vruaZOCJ0RUHNJKW04=;
	h=To:Subject:From:Date:From;
	b=RacseFiYxMrxYxNEn7/Pg22S+DrufCsCNwjegU+lZjmqaIgg94U3IE/6Ao7cOEDr1
	 nVEraFV4/CExK+58fdwG+uJgnRpR9f1BNtRJX1cxOX1eSWuING8ssUz1gWCAoqqkro
	 kHSlyIZgxBXz6kY2ZLax3yINC5Aa9DEZENruY5H0iNfoDGVvBbZV41rl0PvAd62vua
	 eXpiilnD4BuZTybFIsOw+RjlHFENNODrmOcCfVrw6RysS1xjRF9VhmyOkEk8kvOUNe
	 9cBLoURnaNjxKFWIxvkOPyhEaq/ermTNHLiabyDdT9eUwFxG1NEYcSoB3fkDEgaT8C
	 7SsHBNyzcjD0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6ACCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128919357.9503.2983238533633038808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc7c174872a1bee548fc380bdd4fd538975760f7bf790e6c8ce468301529160
Date: Fri, 24 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761289193
