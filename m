Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307F67E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 07:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87BAC433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 07:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677916625;
	bh=7qn5b/z0A5rWAAF4mRN4eFgE+1Epkoeg7Qgz0Bjo8po=;
	h=To:Subject:From:Date:From;
	b=tQeo/lML2TV7VQamRRPqtQmRoY0nyrNJXxst1WJSxwU3YWo7glpTyLiZeJwLp5jwK
	 UeaoEXE1ljvmm0yTwqc/TgCImSmJdm70zx6hMLX2mda7ZmRLXE7NqqC8wlQJH0yVuD
	 e86nI/ISm3HDj2CPj0d5GlwvBV+Vi6ka+iHQIxKnTsfWcCf95Ot8AW3LjqC5+eHhIW
	 R/YLcvsazlNsWSyISc6L6XHsbuTJiJtee2Wyc+GH54y/kfznEPbd2MYW9YciI3UOPV
	 myaUjnH4gYvs8BcVxRCrXHSY+S6iAI6z4q1/OHLBeTr07Hx9d3Lf4pOLzFabpVl2UI
	 pzNahgWjjrEzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD425C6FA8E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 07:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167791662574.14706.16032322766645195554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de26c3d501ba48526efba667265af8ef3ec578923f2a372b05a87b501cd397e
Date: Sat, 04 Mar 2023 07:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677916625
