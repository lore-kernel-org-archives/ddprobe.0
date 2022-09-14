Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D645B4423
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BCF5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663183853;
	bh=+kdy3VbXKPxMfG4/fbOiZg3d7005dxLdksGRzKwCiwA=;
	h=To:Subject:From:Date:From;
	b=hWZ3r3Xb4G37T2YlluynEjNofsL3sfwGkwvyrqXQArMuysf7lqCfaBHHGjGLpiQnt
	 KCT+WE/Qu9tpbZqZD3u8QZoYxTRjgpXtlS4TQkxM9nxfH0mrPFoWuP0P8oU7x7fhQp
	 S2f9poiX/745N2nDyR1a6e5x/02yMZxut1zc1em5rGWaCL1YOlTqHkdYaNBQUqkOEx
	 Yoqj6j6dldMKsvMPbnxS6qfc4tdQjgaWnJQUF57g0YOUi7WaIuBLlDAwwU9dgAZaaa
	 Dkk5Y5x+83yB7viG57fH4eBiYNxYJt2sRza9dqnQ0jGqc+OtLU6WRop6dZWWX1FxHL
	 ntQgYFJsqE+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E348ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166318385336.19863.11866302062720452861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9146c133d22faa809616ea499c48f760fbd01c95a93890296d6db6a6eda8b6d
Date: Wed, 14 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663183853
