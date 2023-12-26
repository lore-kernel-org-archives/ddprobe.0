Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4DC4D10A
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDpnlZTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A135C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703580496;
	bh=KbVuweNjMzSSPm+pxMA//o5/YfSn3sph/AGYl2mPPl4=;
	h=To:Subject:From:Date:From;
	b=GDpnlZTH7qeywOJ7W4ozOmtxu9JWHiLcV3JyWzArISXEitqfv+Vr9qmYGqRaCV7PN
	 JFD/4sgZYQNab12QJGTwP1UEZ0+os8/zj3lITSyKxsG9jaetHsE64en9OOT1TwIrr4
	 Jm122P7KAyL98YgoHKPVCijIy1yq9HGRjsTpqel2viPHFhEEprkb5GAL9OG2j3fl6e
	 DLcuIzqP4gEsqZhCU1IEfVhrTTZEUzTwq/JrDOsuMN2AnO6aifLbdTZ0WI+NZVzRyA
	 HxA8a3DNe99ZArdMpADr2HdUxr9/0CVA+tCF7DteStpaLB/lOfu7EQKbn2P7pRi9Cf
	 tFRs9+kScVXzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77FEDC46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170358049642.13670.15765259955505037871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36bedb911d4e9fd43f227460bcff7ee327061ae65efbb0a8e2b9fa0cc7ff8a42
Date: Tue, 26 Dec 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703580496
