Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6287D1C296
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 21:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01DAC4167D
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 21:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695763508;
	bh=GhxClFGwqMUsFGXVl2Be8PsudtWg2kvy/xi/1zhpAek=;
	h=To:Subject:From:Date:From;
	b=NiSVdxAJhatEdSLtz69VfsDFKVmF1SR6ID6M3NdsbvgKBst67Rqh/RwQr6zwg26R3
	 ogxSiL23DsT+erISYS5YsZYxklmtXbg8+z9i2ML2C0qmTP0koiU2ypDT6QVpT825SA
	 00be+GcnM6A/RrI4WgSslK717WK9/1qhdSzSn7y2+txhRW0lOZ+Kp8WOuqaShDumI3
	 okO4kW9MFXM7w3OtmoE8LFfV+srJL8ZIttgt0rxX0VtTjLYuuLBcTJZKLlsjPBu+9I
	 LClqfV2L7CedD5Fd+7ItMBDnCwN40ByKvyNb2yiceY6qKHFDnoOTINMRgGL6avT0yP
	 SCm5JtXpK69LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43F9E7F12C
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 21:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169576350866.13696.15814419783265870170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c0965e1c866084adce6c916b8a284030af8f89d0e08bcc002c0b6802c271d7
Date: Tue, 26 Sep 2023 21:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695763508
