Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3071BAD5A
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1596C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675531565;
	bh=PVUTL5WX22n2+bUVl58RatW7NPZdtzpfD+Fwtnzpdn0=;
	h=To:Subject:From:Date:From;
	b=ky9QVjLNVv1lwDm3v7w/J0f2AparWZfNrmFczIikP+BOaKiJd81WkneO2OOOLEP+d
	 Svd6CR/+q7CU0XzlHbIjA+1SNoZGPodu/JI9+ZkNq4DX+lQg3UGYMcp5qLQuzf1q2y
	 UTxJU5qSpFXr4JpWxKprsSNSOvpMlBt1XhtspYMN0csxtqUJfXAc9qcpUYoMVOODx9
	 7/8RSqFlt86dHn+dRdZ6rkQxZ2y/jEfvcrVSew+gosKThQ9lJ5nkj6wh54CS7in7Ue
	 o6k1O6Op+2hY4vB/aiUwDwUGkkeO2bPnW/PfAjXrnqqvyshIZc5E1F6eaqW62Ilp1s
	 pJqQm6zKtcePQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70C9C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167553156574.25391.13599509494117606715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0ea04c1c7c2ba16e92d6737a313659251b6c7a030f6c3279687388cd9bcb10
Date: Sat, 04 Feb 2023 17:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675531565
