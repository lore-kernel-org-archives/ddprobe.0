Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BD727F73A
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766249034; cv=none; b=mTISDRsYgdBap05F4con9jJlnF596f0qK7F0gXanMwgWMPt09hoTeHYm0qlrfbTYhcBNWbGleeZMJBDEKKH7LuOK/oRl3JaMrfMs0QQPqpokRtRx/3IuOuTvCoI8kzAgLTNiBHwNzFWW/Nh2FXgPWhAY2dCErGFEt/sv/DoCa9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766249034; c=relaxed/simple;
	bh=GeuKZlOZYrtjP6fgw/4ks0Lphvm2ilsjHYr6vhxgtqI=;
	h=To:Subject:From:Message-Id:Date; b=aVehfKgaXxjwDldjS6i9JMljYx5L7Pk8rZLQ+05LoPvvULid1pCwbPP5cSVYC28Dm5Br2OXm7VII+oAoTH5+v3/AaI4cydsVuHBSIYiJ13+VRULPxbeInoQNCJcScKc3KiZlrXI0kEI5CH6PPW2md8EtzUC8fpk51XU0t8bruZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfGShHVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfGShHVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A248BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766249033;
	bh=GeuKZlOZYrtjP6fgw/4ks0Lphvm2ilsjHYr6vhxgtqI=;
	h=To:Subject:From:Date:From;
	b=RfGShHVm2iYy9v1HSr+aF3BH5+qZLUy0Qz2W+MYiPQ9pXGZ3/YbimvgdxpvCG/N+w
	 8oJVDggENprLmMBratxjoVT4cWii1Ib+zvAq0BGAW7qyUyzJBMFOY4PfiEEWGnsWwY
	 amdcZWN6xpwfed7Vph8zhyBjcEigqlyYhDsxK1BMS+9jJWVcZdaIdmHj8hmCfHAOc+
	 eQAXqw5IFbFwZykMWtSxZOC5MgWk+2VRK81nWV90QRj9FWHP7hNFCDeW4XRwaYsbar
	 Fw+mwqHCq6JoNw0SXp9uVo2WODaNHBrIN2Sq6ioluA103rW2eqtNsRUtGRehb+XXus
	 QMZwB+oAyH8VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE49E668B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624903358.30501.858802288896114602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8119b08e4fae36cd8d0a5d767313490b35835a28cc935d540ebc04c03a9762
Date: Sat, 20 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766249033
