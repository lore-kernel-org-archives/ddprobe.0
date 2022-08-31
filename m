Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D158F2F5D
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDFFC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661958053;
	bh=6C/TeBF/wd/QVK2lan8gbhz6sSBXTGy/hhrvHT7uWcI=;
	h=To:Subject:From:Date:From;
	b=FQp8msj51Yp+mvJM9TmDwojDtI7u+5V3awr2FpRQUTTXoGzPFt9F6PA92FZOFekvx
	 CkYJC1sXbJFV29vMHg0CiyCYLtNXz/TKe40ZYImdjwSzIvJHSR2KtBsz1K+rzhYzqq
	 wLeU14X0beMJ8758hd0e+e0ILiqTa4935cEd4/HSlmDGnT+uM89aKqlGrjeZ0uJ07/
	 Mtjbp22WPhoDC+RpE1MKl5m7lmTP3XnpOHNzd9wI//Oe77rW0qxm8fq+k02U8Yr1YZ
	 E6m8LyE0YQow+26Kda5rj7JplNs5XHcpdC7oe6DuUjDiYgYGcWZOqB3AjLafLd2RAy
	 N8Zav2Sq4X5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542FCECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195805333.20999.7274731022463823472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bce789413a2a0b4e5273d3530cdf1a0f7854cb4ae34d6c82a3e65c1583c008
Date: Wed, 31 Aug 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661958053
