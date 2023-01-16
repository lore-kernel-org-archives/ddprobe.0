Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC55E6FA0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91EC6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673891487;
	bh=dtDT5GBhi7iVYqLien75THKXbw/eEC94NDF5LxvPNgE=;
	h=To:Subject:From:Date:From;
	b=ATTWAFg71ohjmWhe9EUgQ0b6QYmxfHLHK5MxNFp6lKlrlK96eZwdTBix0/hjiG9Ht
	 8wkskv8nN8Q90SctKsgX6Eyz1LnbIl15dI3oAXGRnEmZoa8jpkjHRW/WNmOn0lgqg5
	 dm5S6uAVsQmzeW3SVjEdf/YSUgqkDaW0wqpWpE4UNdZgKOyAfRDVv5jh2sEK6Ghxu6
	 lc0wBML63UbtxTPWy1VscHg2x1yACtJZ+gWkEo69y0IbInSyOgOskReb1ynZaFFJeM
	 9bh4lFM/WT0OU8zHPScGaHI4jDnlSumkg9XfomsuAhxIr/UBB9TlGfIrC+lOSUs4Eh
	 U9CJ8b/3LTKQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71F58C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167389148745.668.7914766935760135346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2be670eaa0c1335c2b3c6991bdec9e63e036f93cc0fc9da01c3e3d2e7562a33
Date: Mon, 16 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673891487
