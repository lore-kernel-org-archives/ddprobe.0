Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B811EA74
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 21:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D152CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 21:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689112628;
	bh=yIYRgty0ak0vMqewUvnAyt1laVPArQdQ7aCgFsuazJU=;
	h=To:Subject:From:Date:From;
	b=cQY3sbplCvnxbIn7ZWHne7KgBdvE+jXAYgDZnrZ9vAAAjkrhOWOxjoh4n25waQGPh
	 mwk3U3e1JahE1GymDumPkBOjtKdFFpi+oag18rOJySoh0d2hJqTHdQ29HTAAktAdYT
	 85g3g0Yae7IaV7TUjXxylFn+0oDl7Tz9il0dhKAroFPcys1bmLWUc/CAWRdBM//uDC
	 8secfXuqhBH4ewbMu8pXitMmCSoh0bMWAJmxCjgJMX52sd+xWmR752qOPunDWOQ6o2
	 DRJd3Kv5r05ac2boRYzZiqgI5fp56XrgojxpUJdx2wvSmrJDyViQlLa8Y6sfsfPE4w
	 SsnSB9w1JOJRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B012CEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 21:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168911262870.25447.12742628257123643568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21e42712cb5bbf487001d2eab3088c0abc9ac9d3d757895189f67080a03de5e
Date: Tue, 11 Jul 2023 21:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689112628
