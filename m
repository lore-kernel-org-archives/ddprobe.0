Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287E41FB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmADpAoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8930CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699763296;
	bh=+tcfCXPbDl91h6IK4kN0o6a6dEU3HogkEUp3I3bdHD0=;
	h=To:Subject:From:Date:From;
	b=DmADpAoKCDerprujFoT2gSA61YLRRGznf7Vt6/xvA7kL8L8g0QTYX9kVd+rxhsbJe
	 nidvHM06k2eR/KiExtZQn+6w5VFJ3prrPV0JYEwxVkJWrITfaoKOm6wJFflV7vqP27
	 fQCbEviXm91SOBiCr5LBhJPUk6vqm2hy0AnYOVpAmiwzai8miwldBko8eCEvMvHzoM
	 fZycu+w7qG5ixxzBxY749rC7sVvb1v/hbO3eu3CD6xK9XNg+XKZnynFzcqesfiJ4ke
	 hDUPHA3f7foGZK7ZTV2yUUXYqy575GU51doX3KD3dYRXIgVRsdLYOs/eDvRRnVBhf0
	 VLxdRG0KF9XDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6766CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169976329640.25135.3465981302329140527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df77c54159ea2f938235acdacd757bac2246d58a6f14af1a919a64e03053973
Date: Sun, 12 Nov 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699763296
