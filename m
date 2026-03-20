Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99A8328B63
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773998093; cv=none; b=gLejgGS2lNzGB/XxybEpAqPJwup7RQnSWttueKWbmI9oLBBbKlC0PI4iPVRNWCAOz9FYOhj+DHOjCW6LkBMgpI+AN6RvNxWCWdLd8SpQoaJPfL/H+zY5sUKCXP4sh3yTxVbzPRzsz7QF6s1439HhWHy/kxMFxMGQcoDxh34n2Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773998093; c=relaxed/simple;
	bh=G/rPwR+UFzwxwh+lSPxUvmYnVz4N+e7FWbFKo4eJ12Y=;
	h=To:Subject:From:Message-Id:Date; b=MeML8FUlQrl5aJGLtnrgRSuW3zbbsnHkomp/H4ijOLdJElMXjYg2cvXcal531r+pIFaf6oetQrnH6BMLurSHyST7gsu4Bb6oRDnPtji3EPBwnrI96LRlGqMJ7Wr62iVHgP9zqNBsPbI0HpVRFcyyPlJpddtQMf4OBUuvYDOvCGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pqt7aGG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pqt7aGG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B58C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773998093;
	bh=G/rPwR+UFzwxwh+lSPxUvmYnVz4N+e7FWbFKo4eJ12Y=;
	h=To:Subject:From:Date:From;
	b=Pqt7aGG6lD5O4cUkn3plTTcutTDduFNhCIulkWjd2MeBQjK2cF6SpcSEqajR4WD6N
	 5KEGJ3hyrbUP0mpnSApfrKam6DREbb4cjQM4eEXSflE0YW2z3XoDFuz7Tmm3Rez82u
	 mZMb6CtSsuBFBHB3xUzOkcJG3QduBp4glxCfsf6j1M+qByUY2KpLJCjuPAtOOn0qtf
	 uzen9aMeANjQScnmz0zIUDKnqw+RtqJ1rJxan1QtnfOeLst5RjRMoUOAF5LicJXNKS
	 YTcfRF003gMx0rULNjvxNCqWBg8Y/hETpl8WhUg2NXpV1rQ9xZL1IsGlVU+OrRIiWH
	 racqqu0xSXDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910161093193
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399809358.5342.1885099920674415002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372a214381110080715b5b16e8098c71f60beed92702d656e5bca2742b7d0ee1
Date: Fri, 20 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773998093
