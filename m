Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21A110782
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C90EC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669930254;
	bh=jn3qpj7gaCqH44yJ8z9+WbswEcFpCEFusL8AnHppoRI=;
	h=To:Subject:From:Date:From;
	b=JnXIZ/MWvdceOavuOj+zZhCVua/YOd3DbI4B0qIWEesGWCeJYca2exQHefSS7oFGp
	 rR5oZKX05pjaQqY5lCS/YAsidwXyecy5RFd8M1+86LSstg1NrbDE5S2izXIZ59hR2H
	 v6X0dwkwATVeFhKdZsHddrN0AotJnMwFljlfmL9vTtncJGVCBWv3aBRXX90sX7hvqC
	 JAn7x6VeEnQThVfS0EEXlJAPpZ4dPvN4qFWi4cx5FT06FcHCwITWTJwdGNfQIR0xnc
	 8WGVdsZ9fb7S+asLXcz9mEoDbKSSpgcm7HxU5p0WOr+s0172x95ktzVMoGLKYBjrZ0
	 McKQA5PCdDluw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5523CC4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166993025433.13229.3972730460773364700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f6b67ffb952c74db90ff9d0bf55faaae399345800eee8008465f09814bbd70
Date: Thu, 01 Dec 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669930254
