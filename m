Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A587E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE59C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671450687;
	bh=alZOP+1mFzY/Fb+sbT5ZbazZoGW7MbZMXx7SpI/wils=;
	h=To:Subject:From:Date:From;
	b=DAy4l3vvZ3ax8ByeyS5Rmt8Bp0oQQIf0XXRhe2JekvEELMJs+hxajIpyml5ZqC4L3
	 oeoTvr5GQqSjwMzgXqmQU/FmVC+u6tKSDsk0rFQEdnpZoCDpfZjted/R3PRLu/fC9X
	 xqvi0a/+SYwhLdxeT5ku/Tu5IxKwpmL1lw+GoplfjHzstbcrCb6ru2oyPevZoKVCzU
	 i0Hz0BCKQ91b6P7CFJ3whnwHkyjKcTF6StKZ32Hh5old0ulLYZqKGvs/ZZ5h6g7DCX
	 RghMd0LhBiRGajvAiINSlOt1317Qgw/B5UxPubwtsHxX0dGYbIuZi0zTtfxrsN4zO4
	 gkA+2QEWJnRvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B72C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167145068742.15350.5866430815993988441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65246689710b7c05929ec63031ba21068bd519a63d0992cbbc0e9868ff86a064
Date: Mon, 19 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671450687
