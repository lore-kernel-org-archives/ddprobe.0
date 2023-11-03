Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F396711702
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uojmzqo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1BFC433C8
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699055896;
	bh=OcZf+tAGeD8RP/vYZVFBsrRLnHrHf1RubTY/UYxGsoA=;
	h=To:Subject:From:Date:From;
	b=uojmzqo/aJQ42Wsd3i9eaZXIPsLhydBQ4kTcNbYaaj59T8mWZvBjeHXNkevfeZgYd
	 NbsHiViIBqeFdlbUtxlqFcbrKGksxHGxzBVxq2V82czfPSM8eqcdmW9q2gzkRiLKA5
	 RU11EPV+qYsBXNDxBFsHNi5vusrXujTSLxA6ZaTRMq+C6mLNRtTRPTX/WSl9Bf6KMG
	 ugqxVNt1taICIZ0+OHqGSP5R/887w6t0tc0Doa20XNCsFrgKFTHf/m48Vg5275iobT
	 iitawJdIwpzboz8utvmgbtalOtEsuBuMYmaButOhhL2PIKtMJffkfSlf7+DrfyHnhc
	 qs7VfS5nYgmbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60937C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169905589638.27771.16406660916427343288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62052ad1f9f3cb0c37b981c39e2e4f7f275fdf766f9416d1eee5aba40539c94
Date: Fri, 03 Nov 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699055896
