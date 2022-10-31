Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C577417F3
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F15C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667193054;
	bh=oCCPripd3ShG+FyPDHYD8DHxUKis3JQHMEnITdCfHxc=;
	h=To:Subject:From:Date:From;
	b=j+8jgujrfdYZsyOxjFYvhJ3Tr5RSSmJM4TB3B/mrghzjerz6YXJfAoygqqyW/JHjz
	 jTwJGrL/yr9SA/i02e28YDYc1ufFv2fvwt5jhtqBX5Qrx9qzH+DDTaF4NCgpPu3RLH
	 FOcG7kOaGmfHB2M2C/2Zd92LJUYXG2HJxcgOd1qhWxNWsvSL5RMCCQG9YKYo8gT/OG
	 zyOPfgKD0O09HE8vO8bDegnQNJUKTq8N1wD/XzPD1zX1vYmLPwQFiS4DnnQ7Nriiph
	 3Y/Hlih4SSgFfEm1jc+mgnzDMbxXqbPbMgMxQp+hyKSW59tRYxgJrsdKlumqoP0Vx9
	 nurvrqbO8J/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA85C38A02
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166719305434.32334.4495046385242582080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9adade9a879404e40c3a65a71046fbb3f5dc1a964bf17b4b8b265f2ffbeeac
Date: Mon, 31 Oct 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667193054
