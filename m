Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31455620
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 01:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E23C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 01:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681435265;
	bh=PHIERxkLEjhjMGpD3bAPjXoDOHBj3ecSovCP8ymiBoA=;
	h=To:Subject:From:Date:From;
	b=SMzDxJDgDmJriJKBakDkhEzuXerMuQjec5YWNB2T/4GXrQkPtx48nh/1yaYFsEAB1
	 5z+Ztli6H4Bq7AM8EmJV9jkphBNgTISd0xvD7Zn55cZb+/6s4LtpSS/FzLX2VpKYyB
	 Z3kvsfmu5bFqfsLqU5ElaBaapIKFLyoflpytVDYokGna5D4QFNLafgmOO5r2j0A1bK
	 QFZZD4GEz6H8dvr9KnUsSTwborN1i8Vhxs5lT4ui3H2RKN03h701FgcS4v1cU7hPRL
	 8AqWndbZYlMX8BzlFn3jVi/ctyajef0JDSzKD07exSL+Am3RPtJOLqL3lV3xhrV9e3
	 aPBRu7SMIMgPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEBFC77B61
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 01:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168143526576.10593.7498702944858614334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad821416f71eb7632821fb7a966997a68377af87a0b1049dc0342eaa91716614
Date: Fri, 14 Apr 2023 01:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681435265
