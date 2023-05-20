Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4BD3D399
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 13:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E73EAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 13:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684589945;
	bh=KwAY3FYxfyQcpDCXuei16czOAOaRxlVoqV7onSGRiio=;
	h=To:Subject:From:Date:From;
	b=Di1UFGpl1YkfJcPOE6sjyCeattxZISNmI/nAjq2tQrtHIa5mhlRBH6DEX3qYI9mYO
	 HikYu8XkzKGiseHoPoDVAQpBqIM6709yzoVtl7KHODv0XI30etbTBmhRJ6/ia73dBc
	 x2QVdf4B6zMmCErW2m0LG8gpcvRcznfmGHAO3xxzn43s7lfSF/zR5aI+OruY0knyHF
	 WlMUl9Sk2ustV1VU6uaEDS9CNF5yVeYwzERf6ig+E9sXOO+TqUE7DVXGLDrwG/wlms
	 OpOTCsAYpuH4vN9mP/+DhxpGj8Bwkyz4NzcUL5iee5/ghagCaN8YwHBstLtODimZ50
	 BWPTZFDyIsxQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3ADC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 13:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168458994581.12763.1574560187319225373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2dca8f61081b446fad6f2ac404cbd85455cdb9da7e69dc34a4c1f618a3bf70e
Date: Sat, 20 May 2023 13:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684589945
