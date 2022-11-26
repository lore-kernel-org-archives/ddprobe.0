Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE687E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 781B7C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669432854;
	bh=R3otCHrkOalP0NM5c2lfnIOA8d9b1O43OaQL7XTIHCI=;
	h=To:Subject:From:Date:From;
	b=gvKGeJXE8GwHpyRmV3B8tK/Z0UEMng9yBqOSnXzzMHD2ef539LEmmNQ8PEWyMzmjQ
	 W+WKvlpTFBjc4G2pF+2uDP1q1f5H1J1pLjAdcwWrShZUuLcp0OtrkqbAt534jUkGVK
	 qY0Vynb9MyA+vy62DlIpGsa1XXp9hFXj7hJH1a8CjCMad1ihPNk0GeVZgZ7ZuRAXM1
	 5tmxxzmhyTR3ODql2PeJ8ncRly6CDUYsFYOqlwdWcN98ljJ6ZywHG1m87OrUqkSPVm
	 1kFHfrvw3YIKxwTAgZpWJ7rCmejwm0QrdGz1c6fK5EOJeUNQoVzugkAynXVXfvHP/2
	 n1jkx3wySnh/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CBFC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166943285433.27402.17142025238936515907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed1a3a16e98fc48952d7152906328b2005f1c0f3e5b211c65aa975122e56f2a
Date: Sat, 26 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669432854
