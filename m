Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F69378
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8276FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673490687;
	bh=8Uit+1/rEPqgSf0UpcncXdND9YJYDbPM3BjWUbiwzN0=;
	h=To:Subject:From:Date:From;
	b=qsg/4Ej6ANMls7kiZ925OhRp3elI4zt9PukoRgeO2Hy5stvXjI2XdtT86yUlH7D/K
	 j6IFFIvcA4KFDYlihNpQZFAwbljAEsgpxsNDXv5rTPKcJaHuVAhcL5h8Ir35egvl08
	 vKtCNZYeOyJ4RkH6+XcgHXx8dKseiX9izjmDw5+1Bg3gT07hsM7sjR3BXqJpvwIsss
	 HFo5koVg/5RrHRKa2Sa45fBm+4YSsQUEdTEepjrrs/Ulr5lg7Y7UO0JbPpI8nsMX9/
	 wfMhHz/8nGByrTaSgfmT/g+/OOiRVF7NSiLvYOariChXOhnh6F8N/e9f98LuXFC+lc
	 +pfE1I8NuL+Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD33C46467
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349068743.23564.17585633206119134610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9025ef914161172c5ca9230e252382b318b103102d312408ae64b91b8a32094
Date: Thu, 12 Jan 2023 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673490687
