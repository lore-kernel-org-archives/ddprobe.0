Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539D3163
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 01:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02F1C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 01:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695085508;
	bh=2s80cvYRBTO+S5mJ0/zmkFUeXhYscKHa6fYq/CS028c=;
	h=To:Subject:From:Date:From;
	b=lPgWMnNcuAyk0AO9JDQlf6weaj42+QsA7sUl0bJ2T72YPrlcnrCf0FWaF4ZHa89f1
	 N6J1advu24WS3Rerss3c133bMPdWUIrWrXA+9upXpZoCGRsrlFakOBT9CoQWLS6xd8
	 hmst1DIbcyA0Is17FvAT4CScDGkOHQp3wgHDPsLsplEJxg2tscvIQth8iOYiHUSPNF
	 tZE58Zv/JV8WksGrPwCbrqcQnKviXM8UyGOL0e4pWcLAIJymegNqnJ39BgWF9d3W5z
	 T6u9jDxPlwWTlRKCu8ufZHFYE/GqM9hy8nG2cifR2yLNaTJqXlvv8NgWq3flkHkgDH
	 DwsfcXqLf2cFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C79CD342F
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 01:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169508550866.21486.3821193853115862219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940ef622158d5a0b2b848607ae0b8b0cdd64723c48035d04ba7fccecc85160c2
Date: Tue, 19 Sep 2023 01:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695085508
