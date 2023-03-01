Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DDC847A
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 18:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33D6C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 18:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677693965;
	bh=cnVvwI3tlcDN2ws5T0yspw6Ed7Er57y6YUgPbIEZSaE=;
	h=To:Subject:From:Date:From;
	b=Fk/mY0YAz/aV3ZbFrRNVYYHvxUDno5edhKV0h044Yeftu+nDpTHifE8tG+Vl3Vuiq
	 Ube1T/NnRBRbByg8GE3SElkwrt/xiHjyvGK6WcJutMF17ZE3u0lwMVb29jctTiRlwC
	 VZ/UZlF30U3lSI3Rb4ezlyh9sBF3Re8cwth2qlwiTMlDwP7gS+mc7Rw4IldpI/b1K6
	 W3sbEz+Mu6aUPrRjAbrSbJDSahsvrwotNCfivb9CcX92KJ3SRCG9NfpVVI6GdGP5fh
	 TdBc+Tu+XudNrPHImMsJXiWY8eBXTG/bV97GLX47VtvVzmJ6dT5xp7i+QkB3Y0soLS
	 2UapmVvAVVKtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63DCC64ED6
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 18:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167769396580.17366.14633446549587379477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ba9ab8227d120a461cf8da16e05414d334a0a5b853201fc07ed1356e0fe26a
Date: Wed, 01 Mar 2023 18:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677693965
