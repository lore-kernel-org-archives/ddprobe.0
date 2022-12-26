Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057F27B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672038087;
	bh=mCTE2z0bccPZTnn+cn1gn6KbUuxPu2N3wCmQ40lcgBQ=;
	h=To:Subject:From:Date:From;
	b=g53v4WxP7WyUn6f1IfO75Zfd2W5FE4GLTkHmcMTFofQEHPVQBCCVm+8+DVWo4Vt5B
	 tK/ydOqozFVJAavCM0iG2w9THk5DI1Esho0h+fvMQmwb26HLb1pLNCqfnVNwds1C9N
	 P5Iviemuyg7NwX5xQhbg59INslrcY3WxHNCCV5VxD2bAi1v046aqyC4J2FHtTGODEV
	 04m5OqUkMBH0PS9FGCSfdGT7UyT/Ha8myeVPXmeg7lBFc1jnDd1I6j+ZbL3VeBSqLU
	 o+AILUF7kiTdaQ7FSlfWG+f02XS41QtwizpA4M3YIW7gIaD9ax5mi/dmxi56OEwa0q
	 eltISiuQI9a2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85193C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203808747.12220.2252605076084382681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d2e8832126dacb6d29ff6aa2ae9a67801fc680ccb4b6cb13ad58d74b3e32b9
Date: Mon, 26 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672038087
