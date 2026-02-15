Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472D52F290E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771167294; cv=none; b=on9+zE00Y3yTZYR2mHPOkGGjetPiLfYhyIXsTV5AtiARTAqnbcvFpijG9yCViNuXRxOllUNxT7j7dhNWR+t3OYQhhpzDHJxQ6TebB7QIpEdUqR2VPUjKoHaCCmWIHRhv+dnqErQCeXTSr2OeDSriwSiTVBwMi1p1GOtBhCZSB3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771167294; c=relaxed/simple;
	bh=Zn4C0nfhuOntVvWaQjWAhk5eA0iuSiFnze88dmNdJ00=;
	h=To:Subject:From:Message-Id:Date; b=G0tl9+MNB603TYYfYvpGNPt2CYvvplWLHc6lWmS1yIm/7jYT7yoMXhL4VEHYgDIqan4Tj1sxTGBiXbsxF5/v6F5GiFXN6FYs7tSek+W9vMue+0SO61t/lIeeh/MN+yOoDxzh75o7bRcHWAaUgGsrR4h+O4HI3NqL5uU/cjwTchA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaEISIDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaEISIDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC88C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771167293;
	bh=Zn4C0nfhuOntVvWaQjWAhk5eA0iuSiFnze88dmNdJ00=;
	h=To:Subject:From:Date:From;
	b=AaEISIDvMpUejzYMlCUgZ9F86xm7sHAMFoHpn8XFCFox5pe8NzlZUDfwzE3Zbwt/2
	 Mhl53AHgQTwUEyJgO6D+4hNq9kXaksgEVPTkKuSKBxyRchwO04GniqEr1hiMkshCPS
	 7bWAwobrxiALa4/q54+teX2cqpZiaebocU5fkWCbMdpYztGIGuPOQ9EzX52iik6JRF
	 v7AisJfO2zAZ2bODiRskeab63LF+hKwu5btBRz00p5+XTvY0LWSMBUuxCI9QNep+v3
	 QKXNs3ZwycfeY7uQ6Kz6CGywBCrb9K+b9G0gdZo3uZI1OULUbL3OANuA/ohRkM9kXO
	 nYE6aSxjWp2nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D19EF586E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116729362.32724.8362697486730764705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198caa10e567193b8690990022884c829ad761d1b2e0b512b66d0f4f54a931dc
Date: Sun, 15 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771167293
