Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B632C381
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5ADC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668864654;
	bh=rNrcPwK0Ieck3SnJQroojfIsp27gze6LWvuPXYz0OQ4=;
	h=To:Subject:From:Date:From;
	b=ms7t1eq9GvuC/nbPq+IlYL+c+lPrukULsLF0rI/LBSkVfi38eriV9k1Zyl/IAyCgZ
	 q+1MqTOdWvz5MlcOI8wtBZZ+4YEjJfjUR++daDJWPSUCLL3zdctXNi8vpLhcPnnaRT
	 tRdTNbKkG+UP7+DZphUDRmHr/kpPjlMrXoP8ds8vt9+nBf+kmFGGH4Cq0sYaTfsdGV
	 zjLtkq9NPxtGoz+6Gfv/VMp8dBl7nhWa4UAb8xOW9pAkNzvtVNmkRQCOa7lFpu59fE
	 dV8Ej0wmlt0tu3t+dtc3UHcfN6OhjbE311sRxkYkiPSFkL4p/u+FDubyur/EONY2Ok
	 i3dPYMUrOmQVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50978C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166886465432.6079.5383724010148345725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f4a4ca2816a2429b14be4db9addafb0edd8053960ad82e553db9c554df2bc7
Date: Sat, 19 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668864654
