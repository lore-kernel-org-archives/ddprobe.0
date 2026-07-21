Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EC946DFFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784659114; cv=none; b=dV46SpnnlNZSRjZAalbcZM2/j4aAedJdF7HaIZ86WLV+inQjsPUlhATCz+AYZZLkoxl8W5x7DIbPD+r2ogdYG7HMuhqwb6mRDSGqCD0N1cCcjx2PlcqJqdh3OInnhaTlTVMW+Ie7aZiBpm0BkUI7R+Mvh3C9NMlEHnf3wj72YdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784659114; c=relaxed/simple;
	bh=aOyqYk9sbGPHhcsvEiCf7C+MO30XwB72utVJsS34zPs=;
	h=To:Subject:From:Message-Id:Date; b=eP4V4AF2FRsGUQ4H64crhIpC09NRVcJjf6v8SOa4NZsbFuFpRcPHSU6zdv3AGBpQ/Hb1oOQxWMcXBbc6pRKYUbiGclzUXJm9U2E4jMrHsud7xwdHZjGQoluCq35ElF6pNhD+aizObdTgk2czVPMc0QfwR0OIVZ8qJei67c3vDfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZezNC0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZezNC0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EF5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784659113;
	bh=aOyqYk9sbGPHhcsvEiCf7C+MO30XwB72utVJsS34zPs=;
	h=To:Subject:From:Date:From;
	b=aZezNC0wDyYWxzmwQDPUMiNGj2hXZ0OwnGwDmAUztXuVK/qhZVD3f3JN2k4dh3iOn
	 Enkye5EjhgvZlsUoGaYTWJG+2PzXzI4MqukP7nDfLCA7q0CJHSEmzNG/IuJ8LXEoTp
	 +2QVsdE5A0fPwqTRlf4eJ3V8WYWk+NFN1+ZxhkCBivePvB1tqg+MzZ7ik0UoVJ0EiZ
	 77n1EwDL991nghhbpPwrTuLqqh5wft7d7quJjIkvIrjn0zaomYj7i+4u1AOfprOogS
	 3Hkp7LN4NBE0V8R+RkzZh5cUphh7Fm1cQe41Z0OipVpW28Vm0m9zVRerbcKlehQWnI
	 ia6AElLvbRUrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8719C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465911374.22873.12280506625404237079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82279ef2cabde4ca33a6ec824eb5333d7c0725d79f06414e0988f64ab81a55b
Date: Tue, 21 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784659113
