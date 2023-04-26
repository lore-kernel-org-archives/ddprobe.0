Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4382CA9
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 23:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 006F1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682552286;
	bh=4i2KQPHh/lin5BVt63F8XwyCTK+QJrIEv+qoD8NoHjQ=;
	h=To:Subject:From:Date:From;
	b=ALWbdgMwL5BiFlWFybn7n+9W95QwBw28Bfzy/YgdGa3bRxOM0u5NWftcVU6KBocRJ
	 kPVVW5hfECzCq9vZslSxIHsG5hamLDxJ9IXvFJwtARAaUby8sU4LFfQH/b8xaWiIcf
	 owrOnOIVZEcYxHs75l2hT15WoG9gVWrceYD3g889Sw6hnhMVDEF0+46o2g3iNEaKfz
	 jC+j7xlQTK4ek36KVaynFxE+c1NkXqarK5sDoKSXNXZWKKv51rXVfYfPT/PGx7OFy5
	 VuLCZZ2x3mZiDAo6MqbH100gGGN6S9BjWX7IkpPUH1cn9S4LQ51L/s2UvTqC1vaSbu
	 ZxAg0skotsqIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2DE2C7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 23:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168255228585.25440.12790294976260731686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef4c06a0ea370e6d2fb4079b8deb2b8ef5ca407743f426c8ae49f13af9f6b53
Date: Wed, 26 Apr 2023 23:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682552285
