Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04227E0
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80656C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669713654;
	bh=CCAuWnGk5ZToFQIBvPh8dSY3gfrlUo6QGU9RH7Az9mU=;
	h=To:Subject:From:Date:From;
	b=Vwu5KzVwUWFupnCNhhHuNOgWZWn0BDHubNr4AbDcrKaKH/29u9M200wchPcK0c1W0
	 OUq06j2Fv5sZJswVE2abVI/dwNF5FzxOgj1SRy0/M2x3MS7hwCNs3S0WhmdPle8hGd
	 ebno1C/zR7B+hFmqESHftJHGhGEFJ9z1OWEH1aqwJAamuXYiHA4q2oWiUPwX/RGs5S
	 NwVo0fdMTSFe33XM7+4+wHZmKOKt1FauNhPBwnZyTgOtrKR5wyfAyhww5q4uKRYD0G
	 RVvStors30lmGkJQNDyb1EonairN+rVk+qm7e6Mwg5k6sNiFXCjGarLU8ZmmULY6PR
	 2FjcQop25yYpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CF0C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971365438.15715.16091954995287911781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c4b1fd18702f84ce383e0e99b06cc6cace61d17bcb6b1ddd0fc32ddd0bf712
Date: Tue, 29 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669713654
