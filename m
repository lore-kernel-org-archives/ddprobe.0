Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23813C34
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E3C4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672521687;
	bh=VOXZcKhbiceajiPiAOi04QqzPtWfVgR3XcXej0NRCIA=;
	h=To:Subject:From:Date:From;
	b=cCtJSgXT3hdKJGWihpi0zf9OQTFeEjypviftHXqnCsA2nXetCfGUrvTE+0RN4WdIy
	 y+hCVWNIQTt+QVJ6KBi67G+u7LHVXl8SDyfBH+e0kMY2ITnLxfLlyd1Gl0BkU0kneF
	 ZfPSoQMD+mQROqTDI7RggOyo8oN8kN14Cognz6lp1wZ1VyKxWN2ZG2vWux/BgXGncf
	 V/ZfY4EMtHEPwK4WdSm+jKe/IZ6Oz7uQ852KPcCaPyRWh6CvcasgzevFpX5RndJXfs
	 uj1NGu0ac1OzUrGEdgXDnsGI2xTH/G8ivmbzg90D39CHrtv23/IJqAhKatqg+gM/Gw
	 VNeGHXwkJk0uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70730C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252168742.19130.12646145070625244925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb9af4f9a2a853e190a3093e0446b00412ba1097b138ba67052011c7e53ef93
Date: Sat, 31 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672521687
