Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B173BA49
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 17:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D181BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 17:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688663828;
	bh=5fTNzkI+uJ3J/P4wtwewRngPn4FAT1YykfrdRFbmbn0=;
	h=To:Subject:From:Date:From;
	b=E/gd2Xl8AslYC3rcCO6WD/BGado1+EWKx6U6AyS4ETcTu/bvmTEqVUcF6DAU3aogh
	 0dXoyb09Y+6c9/hjMr/zEEzwWjd24QwtyN8D0yASe/X2QT1ZN666ww6Ba8VGUz18UO
	 88aPeQRkw4C3CzBnyA3wFD0W/eR07ovwAzWyUM2rteJWCwqHFr6HGQwzaISNwwTqNa
	 O1q0+UwK2xv/Zdhqun07NDe2j1+UTQZ/FFIh9BeHF8kV/5S2crEsIoRODNEaToY1QF
	 bhk9vp7iAB4O6DIunPnGecXVLvqUnqbwN0bygGkj89RDZGyRCINcwrrx/ffdS1Svav
	 SuOBhVhaTkRHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0175EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 17:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168866382870.12855.14353460838392583854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e50e326cb7c8a16a887445a9e9f7504352d016e2c361cfe25484a8cced5e5a1
Date: Thu, 06 Jul 2023 17:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688663828
