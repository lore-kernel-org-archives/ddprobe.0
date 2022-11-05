Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F2D1C04
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B682C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667633454;
	bh=JgbMxJJjS6ekVd/sTbsGofVbL2YeuIWoG6960HDWQw4=;
	h=To:Subject:From:Date:From;
	b=gYo1yDEwkiDnrdDlTnfYf+60ysBQQuacARvhei685U2zWxSC0aBmLExCqFeaHxWyR
	 2Lrt75sMqUvEleV/cco3ZClSV5TJKdTRiWANR6+Pou4BzoTgENXA0SYOhLB0IqfT24
	 lIzlMuPDAK8JpExWuIozRx/e2G4VA1Iws+SyHqXGdh6Z27b+dl+AzCH0CBcO5RwjZ9
	 Xwq81bXZje5u6pkuq86xPphDjCDU+eNyI9sYBY1M0T/QV19Fl+quLyv6rZCi4N1fE1
	 YI0Liv4+zHtk1QHWGBp7bLcjdtPrpWkmH9foQj/D9E0IGm2Q70UPropBCoLyLeWQcD
	 pAF79af+v1XRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62040C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166763345438.20510.16348649476634047614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e10d72867669a36af7888b857cffde051bda833a9bfb284206231088d68fe6f
Date: Sat, 05 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667633454
