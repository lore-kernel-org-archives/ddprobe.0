Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2E27E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F10CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671535287;
	bh=iJDcNEMiWyPtiPhIfhvbJN2cfhAnfh0e0APusbLYyC4=;
	h=To:Subject:From:Date:From;
	b=GuGn9FNx/dKElYHw+7e858wuF5KKRBvsXoruhBxzrtK9QQev8Iu+G07wCz6DkQukw
	 T85FvRPw6AvszU6UWC7cLkgeIOjqUdFAqHYYejaRRv4P0/spO1T/4pedkMRYh/RHnZ
	 DT/PK3GsGePhv66p1SvF7lQt5QI7GARvi+cb+7gpd2rvLwm6tPEPTjRnGoeW/3uk9K
	 ESj41z7IOhL7AWCh23NWVspkMtPx8oLjg0DLIZGkY6/eiLRdj/oNXIH7eQ/t66dcwI
	 BHmBmll4Unt5OcUpggD2IstWiMb1isaUu+ITGXKDX3Pe6m9l0rpBCbIU3ayYzESWIc
	 JNRvi5M1bMYYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EF6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153528739.25116.7591962740990816188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf71e62d0000f153359d397b5417ba425977ad97df0eb9b510add2610cd8342b
Date: Tue, 20 Dec 2022 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671535287
