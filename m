Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89BAC7C
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 06:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46B1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 06:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690179128;
	bh=lQvVySzT/qGELv7bMCeLMjPVtuOJJd/mVyjrNG9sxMA=;
	h=To:Subject:From:Date:From;
	b=lyxlurTsuTvdJOqbWDAKW7hpDBV4HK10iDDHDjTXi3xPvai7do2svSNBk9lv2fitr
	 SEU/TY/wn4M4y7exOJsvAGg9/nQwP1v5xlFb1czX1TPm63PtFx1zzhRJpFHmRRtZf8
	 FXE0UgdvuovJouhrR0wMIPsQft8ar2Fl9KSRZIbmOO9zAhiQ8qlUQHly3wJTajPcRw
	 Hk1HlKiqG4iAjellriFifvDXnH7maD2GVNciJqcc/LfsTjS/kiTO7Sq7dlDeVjkdrK
	 WskUoQA+VQ8vrShwuZRmIUttJO+aQVgd57B/SC0PfAZIh6XPKKgfweiJDIRU9DaUGo
	 BOOI43gQE3i2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E6CC001B0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 06:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169017912879.1578.2608679985005523574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144693c1d1ebeb63d0c801ee8297d513d5f2ca3e92439b5d7c1e2f8dc3449f26
Date: Mon, 24 Jul 2023 06:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690179128
