Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161FE22D7A1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779992554; cv=none; b=KFw+TQXXc4M+pWDj4WKyadrlUvbLQ7v1dbhWuQSNE8NKAIVgA5FIz0R+vqFeL/SsGxhDHJvr321VHX1gIWo2Tpt3S6P2HxR0LLj0lh3jW/NX4RM1ykcDKRGuQJ4hZ0fW00sbJVPX3MAaTH3AaKl8p/KMhL8VPRWY+gZaMHG66uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779992554; c=relaxed/simple;
	bh=qHQYvptTKFQ6rq4+5zMcl1kAEqxL7GXsfWl3oGs2Zvk=;
	h=To:Subject:From:Message-Id:Date; b=aP6Ro3AQ9Z9PnUXxTnleWaJxW8z0CfimUheNcXE5Ws2BRCMovOYhMQ7ktQ6IJ3CkPRHQResAB25dxG2zR0xf9mKoXzNlejvcVnxArzlGAaUrQ24pcSGTi6tZ3zlajHcVyqMIL8hgobkJxkFOJE1qvfWJ95q6LD9AA0pWqkDABYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sb6I1n3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sb6I1n3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B43C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779992553;
	bh=qHQYvptTKFQ6rq4+5zMcl1kAEqxL7GXsfWl3oGs2Zvk=;
	h=To:Subject:From:Date:From;
	b=Sb6I1n3OGXbUsMmVeVywC2BHkGNS5h7TYP450QS/yjq/+Yh8Fu5qW4dWz9lxlxLSb
	 jZjIS7RTHWnxW/apMLKeB8bg3v3MYejTEYL/CpsRTKJ7lZbtg/KsC33yvQBbcu7rKm
	 wJTx/fFG+qInCyzdPQERUWk8ONsJTQcNqun6WyiueJKOR6gmcuN+SCzd/EGai2HtI5
	 9emQ7gBCLcmGjOGpWoZjpE8AzOdCjaButyj7OWFpqCbSQXQ/OE1iTThVrLrz0KJRuq
	 6L1MtAfAPE/lf+UmtqIx3L87JqT/p8hhdQfuJPD4iBBIvpAvbIucXYsttDh5NaMYTq
	 hVeNcLSHvYagg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A986ECD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999255368.2247.11475163146266029294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b29e936b7438e80ea0225ac880926b706b75218be12d17ce3ab9ad753fa663
Date: Thu, 28 May 2026 18:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779992553
