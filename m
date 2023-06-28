Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672377E2
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A59C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687914188;
	bh=BHh40vMX/dC0P7XFRqW7KTV9jEg3dxL58WnSnAbao0I=;
	h=To:Subject:From:Date:From;
	b=fG40RsV0ihuvlLWdcILHA612A1ZYLfTHg/9LFpUFooRx3YgtF1XbyeUmicqyHIKKl
	 esifp7rjeLVWZOSzUXYksC9hHWaC9AhuwIQoYI6EHJByY4945gc40eP2gqcTc4vhzX
	 JeNib/WoxPnoo2f9OsOYoV1Mt9qMD5Bk+KnrENzH3vpGBU59sbGcF5zQrqVlEGwPtb
	 P2B0XGo/KgiARhBWy2zil/xvMSzz52HRiOVFqSS2+nK5H+UkwaUpfU9wE+QhfxMaXO
	 zHFZ35TBUmocD4FIqjg4uAyaKisAFGPAKbpemX2DhlbFkTgaCu1Ci5cG78yd9Qa/Tm
	 /m9xWPqkUFoyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE405EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791418870.21844.17901821447906250994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62813a408f27c9cb193f4387e0dee74a013daeb21b2a7aad45d6032b53a1584
Date: Wed, 28 Jun 2023 01:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687914188
