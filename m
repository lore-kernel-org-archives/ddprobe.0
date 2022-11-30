Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB22FA42
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB45C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669803654;
	bh=U1UAZRTBve7f4q63ytF+9sfiwgcVj/JAOj636AMYutU=;
	h=To:Subject:From:Date:From;
	b=nh71MyV8XF0i7yJorKTKwx1z/d419Nh2KHXyAwRE1Gt3I/IgU8zIeoM8WXURWt00P
	 vOIYDnjaeuLRJqk8tZM16oMUD5tfZYufkYgxyCABPDnuHO+pFD2+0hIiClRIAbdNOE
	 PnYQGLVnBQ0Onfji1ulv4UAIisrADs2o7qE7ntVJLcyiO6pt4wxomRRGwh15jZz8Sm
	 TsEEsQFy93vw+XVjIyyYvy/MaaS4Y0MWgpsP+/nbmF0+rF3QnxeEwYfB+nJ2NBuXHh
	 DuSb/W26z+YfvRiN2JFVAgkzcVQnJUMGr/NAJyN6ucLhyCmWW8VDn9X83qX3RppYDR
	 BKGnZwh5zQ19A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EA4C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980365432.923.3246969392915670241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177c3b668a7145cedc1637cdde0fe2048371cb5c4a3baed039327f11490d0445
Date: Wed, 30 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669803654
