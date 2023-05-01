Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F03662F
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 04:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D727C433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 04:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682914686;
	bh=WyFg9Esw4IEwLmE7VTcrDjoRDsfDg4wyK1jHGej/Xts=;
	h=To:Subject:From:Date:From;
	b=pqwLV/wCT99GbKwkuaDl6iWGpWgtQ+IAR33+HDFQ7c+CchblXOXGgxPu8r5Q61jW4
	 oWN78g3mSzSEST8sx08vlI5yZCIzoCOD5s7dke0bn4QMC3NB/BYOxu9zXaa7zTdGQk
	 2r9FQ8PIB1bVFeS6Y/QWrkNNgZoCD0RxLWTeQcH5I0YG7ygHUIASUTVOSKAkPZXgCH
	 RMdCPLeVtZM1qXGFUcG6S9tRf0LyDWwizOYy4bDKcYBzUCl1qoZsJ5M2oS3jVIUame
	 YM6lK6ha9QBQqyQerZy6tNDZi1XCe2Jc+vYCvQf30g6mpRjJcq6R9YZ2lKnIcMYUGg
	 kKlsJJrbjcpcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECE13C77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 04:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168291468596.16531.14039895415334612990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2be59d6d2414cf051e00cca463ffcde2e6ac0e6a0106c86d1b997f6f65f9b0
Date: Mon, 01 May 2023 04:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682914685
