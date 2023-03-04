Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D5B23AD
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1377C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677933425;
	bh=o9CiTwST8SHKcdI5Q9JoZXQ9PkMZVm8e8wmFwOfbRD0=;
	h=To:Subject:From:Date:From;
	b=VT/NbxrtYvjYJiGWliwqK321rH7detGoVBfdu2IbXdLm8p4+0N3ezVSTS1y7vTdAc
	 vMaTiLV2+6tXjOcK3QSoNOf8zsct1nmv8iCdvIqhjWURq5JtGPZmNfgmLer9Srrrzt
	 VUrTiDPzQUxrNeCQMAWlr40CoKi7qNca3mWEZPHhaG84rIsTQe3JH15ddTTaq8swnF
	 Pt19ZysGP1NBTUbz7QWKEpQ5VEOi3pePqqNczNHpyBjkaQVBXpcSFYZ+0TVwETDWLI
	 nCSs0uIJsqzIj0qsdvvHOfL9PXJzrD0NC2kmzHj402707r/XxoPcyB7hzhnC2Rlkau
	 wSwWgGcXBDidg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0B7C6FA9E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167793342577.32050.2697389497790791792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778c59d62d4ee5a1d60cd8a3332cebda146f34fbdf812b6fe4100a64e4b3730f
Date: Sat, 04 Mar 2023 12:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677933425
