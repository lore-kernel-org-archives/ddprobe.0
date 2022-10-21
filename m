Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B687E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ADBFC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666371053;
	bh=aW9Xmc9uO3arIRb5FHLuEncVRbeDhO2RTNCGnKsd3H4=;
	h=To:Subject:From:Date:From;
	b=gGTuS5phlBswi2qTR+TsrRy9Bo3D0wEJPayt/pePkbLFKCqHjoZqBX/8gT26zutCy
	 ia3Lbc0nqxA1v4UwrhQLi4AeTUceWTO3+ujRj1kzP1S+Ydrcg7l109Bz19RDRrO9/c
	 Gm5m8zngjtUGx62vjx/I6RzFxEuoI45lr/TjEF9nak6NOcVRQ9iCIoXE73zxcYBadT
	 0J5HPvKt0AM4ZzaBUJRuLGB29YHFPlNHMKteXZGv6D8BOZZfgUW8W7ZtiRTsDtQLyb
	 rkxOEOpbfM3XnXXkKfC650W5YZLTmKf7RxcnvafSeRHsCOHCHjMCiDt0LFeb3opHIB
	 gwIvRHR3w6yXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51330C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166637105332.16527.8211566418448950800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea7dff8b5c03de77ebe98bd186e800c5d4ebfcb29109f0143a07badb79ceb7e
Date: Fri, 21 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666371053
