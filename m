Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D99D643
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEAB9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674292326;
	bh=o44VgWkaNrTdAyZLvDPpb+OZlWrYRXc6czFOi02ngjo=;
	h=To:Subject:From:Date:From;
	b=qRpYJyE88ebW6b64s2drns8BxszoiYS3JIFgD0Vch2xtxAr8GUpdu02ovBgSGUU+I
	 MO10yKSYCyAahXx4DF1BzNSP5I9oTd1pdSECUPnppGvahf8pmvssoRgXk5L0ovGiUg
	 4u9TgRaquHLqTEBF2LGpaFZsD57MvfP0KgZNw9phoCApiZhjXVgaHFskRTdaS5EgF5
	 kKhgnI018Y4J+G15d/4Nc5GMRYHTD+22Kan3xRoUqZzZqQRfPxPAeB0JDp8Z59/Zis
	 EYQ3qPMXrGYJG6fAGAtHIZPISe6kSeMcoGji3qBOhQp0wX7YyTBSVGlKnSGs7riRd7
	 e4w7npLvC+Xww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF73AC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429232578.23612.5275315839232377931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad28a5719e8d1e2fedae36e5ddaea3a4260335d0da7c37ffb389c2f1faee52f5
Date: Sat, 21 Jan 2023 09:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674292325
