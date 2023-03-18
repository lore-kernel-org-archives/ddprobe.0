Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316FA29AC
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 14:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE37AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 14:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679149325;
	bh=NtKd03DPJk51qWVb1DAa0NMukqS7Rpt3FSnpUqtgSlQ=;
	h=To:Subject:From:Date:From;
	b=agIwD6YZkTb1HyhZMxbDSez2vJM2RWMeQMyI4EeRMPUKhqMBSpoJnDXDwSG8llGWS
	 N4k5HoSeC75/Bb5AaMC8GltdYmDbgJaY6l714ceZCEQrzI4MXfqxrSmTQHDVNuGU+j
	 TD0oIWzjysKCm0+yrQmbg/nyqBMK8/vwNxmdQmcL8YjgwXfrY1CXgbBDHBEqA85QBh
	 BN+Cy97mk3hYUIgLHu1xBlXfySRNnvbfrOC865OVZA7njDYUMixYnxWv2nSUanoMdD
	 lqAvVanM0HJfVMAi6+g4OTmm9Fi9lZIHHB1cMz3sgAeEkGPjf5MkrvNe1yvZT60jIc
	 u0cy1rEDvAzXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6766C74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 14:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167914932579.30857.13272298015881081674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70efe12a8a97c1f5e253fc9b2632aaee36798b8539b0e8b2af88eb6776ed4d5a
Date: Sat, 18 Mar 2023 14:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679149325
