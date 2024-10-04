Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D80219484
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728052554; cv=none; b=ttD2tiSkWW3fDv6YXJQKEGMqC/5z2kGa43yOoQ8AAMfdrTKlyaOkxWZJBWlsG6koB/ryjsxOLNJXvWc26d6J7IM1RFoEhheOarBwMZEPvuyCG6wD4pw3b6d7269Qz5zXlkK4KrdUGMtRI8cV9n9uTDZeQuZJwcbd9gJPjLz0PEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728052554; c=relaxed/simple;
	bh=hzRB/yog/blnYasu5ub1ZnStEg77aWuKEyUmVTbkMPA=;
	h=To:Subject:From:Message-Id:Date; b=AVuPHxl9+WCMh3p+uDYBG0EBobbtfOlBEEtijzvGr//a5jJ2IRAka8Za/c+mqo1SbHG4PuLa4PFhu3m/EH+SICGannEPGbC41Xbzv6YnwZ8pv3yKkRkYDn7BLxlmrvpARcTQx6aH5SPrQgt7Gw7NdfLb7SFxTRCOKZKSGvezYXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRuagudr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRuagudr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B915EC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728052553;
	bh=hzRB/yog/blnYasu5ub1ZnStEg77aWuKEyUmVTbkMPA=;
	h=To:Subject:From:Date:From;
	b=lRuagudrtxyQwuOV1XLcLQa3Rv9Yvpwcf7Rpeur6FSkldlGgTli16AcdyXdecdghY
	 GmIn0BRm2HMjk3kylaZl6GTd7eHLlnBrmB+hLDfnd6CXboebe7aLY/Jt30AYe0fzdf
	 4TzqtgfX/wb7RbtT42XZAB0JO7DQGQiKXvEQEshL/0WkVD3XjnYAa/5cqKiR/aGDzC
	 vBSP2P2fjSqB9FAencmjVq5eNe0nAoi8cB0MvTgCdm4Yd66TViGf7fA2cW9vvVPHL0
	 2INZp3ns1oVJmrnYX3ToTW3O3kc3zyJURVE5wCALZJTwkLSerE4WyvVgH6/jqrXv0T
	 gGbV4TYEH09dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3854CF8843
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172805255366.9182.9463458321079597173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974055cf5df7aa3394a00061a6a9d77547eca67178f6ed0cf710f3f4a8419c70
Date: Fri, 04 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728052553
