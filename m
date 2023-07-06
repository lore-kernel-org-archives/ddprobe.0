Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586A763BA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 22:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1097C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 22:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688683628;
	bh=8kWSfF4UInI5oywPObuq9b4YfinlXmC+8+2lL7UgsHo=;
	h=To:Subject:From:Date:From;
	b=ZGEedeArz1wcJOH40Nar9Fe4vPJZQDEe+x8dpC1RUxzbf/qd4jI8G0tmMunOZv/Ol
	 5uVYI/pV1L847phWtZ2XUBAfr/lzBiw+U6E9XyREatGkvW9GVHlU3EhqfL2Ii1acK5
	 xh2aYM7HqeIH7zQGae35v1Qp9foIygLFoWVPhi+OUldeSJetm8cpVC18WxzCYRwRuN
	 58rM03UkUQHBAd53BHaLOtawNeKEHsXBJHrHSxQuJOTayILCRktB3OIfJrDr2T3z18
	 VIvIZ4PcCYsuwb2/WdVfio0X79NCBjrtq5qVR/pFeYSvGW/gmRgBAWoSZ/VskBx3Vf
	 6aZG/+wn9R74g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76C6EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 22:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168868362873.5541.2258453661566909408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7ac56b681e3fabcc6320eed2fe32431c0094d5fa9380496b27698c39f0b126
Date: Thu, 06 Jul 2023 22:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688683628
