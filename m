Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A987111BF
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743835795; cv=none; b=MkMGz9LV3Uqpr8YQ33HfR1/4a6pcQcirB56FfqQmi4KflK3ACknnbXgTdFPuYGCadJdO7F6AsXRRndIn10g1gVKISunL64c5VcPB7NvSNBnJj+PptWFsAa+JLWGKFlWMH+2NfWT9B6MTnJ79WPQyxHB+L46WQW32oxIK0V2M5uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743835795; c=relaxed/simple;
	bh=dppKHeJF7qcoL2CwGOXZZk1azWKk8HwkDg7ZpxOEiXs=;
	h=To:Subject:From:Message-Id:Date; b=khgvfzsaPCQW9TjkEXm3yp9z0f4+OL561eJRYlsBlgsDKOWLFSB5IvLXEevue+nxWnsKtHfov40jWfBmLMecuDcqGblClZGgl6fULD5uKt0+lN2jCJbS94DwnTxpWAfUOa196LjzJMYL2za1gWKLejWTJOYnr7Cl2XopXQzjsXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAgY23Bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAgY23Bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2315C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743835793;
	bh=dppKHeJF7qcoL2CwGOXZZk1azWKk8HwkDg7ZpxOEiXs=;
	h=To:Subject:From:Date:From;
	b=DAgY23BhWZrUbTvl87jfwNeCZBl1b6LF+wWl2JhX8CIBbddYXlWA2jN8jfXliTuVA
	 HmE/hhIDrQwx3tMeM5V8eGRoA3xzKL/zXNuEVpPbsXeuLc2Cz2YX2lnGth2mQ+27xq
	 en2FJNiTo+Gp9QhGlHHuCRugjQojUi0Gb9LxbKIO6Lh1oB+hj9tzFvt3R4yBxpoa7e
	 j5Tbi9JUAF+P00FEX2dwxsCKjU3o1ELqutZH+w3DVLaC3VVAqG0NSGWnXmYr9xxw2U
	 4XCWysTwAdXAjZ50HPl8h5BbqocHxmBJKE2XKcniH3Wkc6HkqRRcY+P1i3WUasBCn4
	 P5tOXuIKhwjHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C918C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383579360.21732.16011004888956707618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668657ee85de8cea38acac51f805a5ef055456dcfd3eb382f912c4c1ed802ab4
Date: Sat, 05 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743835793
