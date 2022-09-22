Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D279C28F5
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 751A3C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663840253;
	bh=dlQR63KXu3PL695b066WASDZGm9DTAjvsb0mSq+e+pA=;
	h=To:Subject:From:Date:From;
	b=lQfMl6JiumBX3cNzE6kkQ/dJ6pdekYqjcasDZa+vV3ziCjEbxUYVY4BSHKTsB7yn6
	 L0nhIAgL+Fy5mmnk1uQAyZOnJfLC9FC+TtAexxJkD6fQ6tWJkGGB7+HoamqijbSQ+W
	 LEpZwfa/BS2MBrkoXOT1LptyNrgB+Uq1P8m+NAn+90wyIY1j+4O/qF8KHU2FiZSZCp
	 yK2F3KjzK1smUAPiJz3TQR02dB7/rXHb/07jKC4CB5cPhse/GicP6QCbreZyO4Ki0M
	 sPZYOlXt+ocWA0iYMzll8odSKCIlxVtm9J3kC/XsVOXl28t3fSy3qSCdI5zSH2wuux
	 NZcZ9XtgVdYBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57033C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384025334.24150.16640686571776852732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0730e4ced9b708adb7c3647a57dd4a584e31c316626d293f64fcaa64f35247ad
Date: Thu, 22 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663840253
