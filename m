Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5581480C
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 07:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F251BC433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 07:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682926686;
	bh=0wAtBPSkxIvfFkBKnhPZLzDST96eFulIojJldJDP+NY=;
	h=To:Subject:From:Date:From;
	b=YqgEKjq55FDgomU9F63K9gyRRHjv+4FTlOdfoUven9VA4yK1AnPvUotnwlSIvlcT1
	 sbdoOqMroNMr67fmunMFmur/8UjbBFHMMFBpZAjh8rPE2LiaGQI83xT5/yspFNnSzc
	 ahflnNF9sHHHS9QO3T4GMz+bmKmL0BcjUGcHCoTirjagmCiTqBCHcCf6sDF+qubaEH
	 t5OpW+xm9W9Vwnh89dOhsg/u3AVZ5BvBXgj6ZY0+WgzwyRu7Hy+T8bZA7aF6rXlTDk
	 KcgOMXxW72BZr3g4i829MGx7lY1fCRPRz2Lc28re/DCyA6Hs17vK5H0vUNHKroMhMf
	 N3Wqa9ZTeoFIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB74C77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 07:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168292668579.8091.9661631494765723330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc770f9a71d0c2fca790e940a892f60abe610c9a3a546b52d3b8f68ff0ced3e
Date: Mon, 01 May 2023 07:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682926685
