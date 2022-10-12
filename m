Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C8C17CF
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71104C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665584453;
	bh=KooYwE2W0rCuIcvTPag0aqUPAmS5bYJ6cHaLZV8ZRFs=;
	h=To:Subject:From:Date:From;
	b=tMQkvJRCCORBB5RLYXmS7vaN2EPx2ACUpokAFhfrNtxvTrd1UqKZ/BRkkdvxwI+Dh
	 1ZYmwuDPMMeE3Qnwzip7sMFlFSQwEkDv5ih3Svs+0sCKlogaahSefN3EnucwjwW+Vy
	 2S8PZQti5K0ejY/YCZIxp23cFkLlLWM/YfaNU+k8KjDZmnFfrQEnbbW79qy+X6EPay
	 6ICuVxYe2SSB2fnEM9C2meksn3HccXDXBpy6CJxtDs6WqiX1v/MMxRVAm8mEIAVO2I
	 8qRfg12dSB25+dZ64vxc+q20EfU+JfphojSFgc/WXHMgGxw+kL6Xo+2WNQ/RflN/Tn
	 Yi53L/VL5m+GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DC4C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558445333.28597.15279433529768209959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f789d5fc5d2edb303c9b756c8028566a34b8e5017609e5a9e288353402c295fe
Date: Wed, 12 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665584453
