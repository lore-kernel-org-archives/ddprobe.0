Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B894FBA25
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C6B0C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666854654;
	bh=93HbEtCsFGqnFeUyyxJtMvDEkPFiSA+X7rK7VYYbIXc=;
	h=To:Subject:From:Date:From;
	b=kOEWcIJ4RRX6R9A252DboBuOx4I2EEZDBcBSV87HsKf0zmPoRBig2ogJqRHsrrD7A
	 EUlRVNH2BB4IWSuibC/h0ya9fLG13qwp7fOdDnvXBSGU/3kz6yhzuOttcZktjubJL9
	 5jKuN5mxBuXaOxmQoBD/RWPqMqJe/08xbQulmt9lrSykaeHKwROOae693VY6RZa2lj
	 ume2YOR86ee7+QQT5G1AgvitDEJW5Bf2x8FHKvLwUAauSpAYzL+7Kb3qRBsdNVlnSd
	 Tg6aQ5aur7+/tD+ZThTtrJPaW7/3uj1H9zWKj+Sg8miQrzKt1Z11j3g0as2QR8KljK
	 nveQ/CLmdYBTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B1DC67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166685465432.7725.7602920216773740877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf5852935503a99e66b2fca4f809e4ed8d65620b5402cacf9c460f5a6072634
Date: Thu, 27 Oct 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666854654
