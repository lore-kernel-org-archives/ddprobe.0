Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523A41FD0
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 11:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFB2AC433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 11:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677928626;
	bh=TPywkcGPC0i8YWtDMm/gRl+zRqxZAt17bscFAbzf8D4=;
	h=To:Subject:From:Date:From;
	b=riQce1V0scyWKuW8+9GJxQGnH4GAnIipvvPulSMthvKjW1J9fzvmYxi6hU+lSUlMV
	 /wAXPGL1HDWbwmRciviHUPOifnPndEKKjx9mJs+1lgZFnDJBdvVFa2cKUG/87ujyVB
	 0txCwFy/LQxfoaFbbNVuVZ7uPBGG7Dx5/uyUKGQMOok+l2eq0/q2Kc2ZOUykZ23g0Y
	 ds6QlOZg0IjFttYNDyLKQ5SyPyOGMYNzSk6U9rY15Inl2wTonuErRUBxUm/sgbQooF
	 CwWmF3NoxCnbyZxmIGEDsoTVKWr2oT+nDQdmTeIdDzYYjbeh0zN5EEljl/P1JmP7YB
	 +gFAXrAECM8Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7977C64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 11:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167792862580.23717.11621722236798386171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e257108e9f227e6a1e76a2f1d3df6ef37cb43175935264587d0d736e9bb52b64
Date: Sat, 04 Mar 2023 11:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677928625
