Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6BA79D4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 10:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4F3C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 10:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686912548;
	bh=kv4FdQMBne0dcuBXiKJ1XJdpJgQtTRpeNSTHvMizpA4=;
	h=To:Subject:From:Date:From;
	b=uRbC8jALbTvoIMOfUa1WvejAqGNFtsSmm5O7VRBvzXFGouSPWqs8sieZqgjqUCfW6
	 kN/j4SskjkTyzYtD2aA32ZS8yapSUsBzNQHQ6tJA0Y1UrOWj3o3/6DJtEF/rQZrxUQ
	 S/d74K1Vuq8OZYsJ13VHQdwXT0HJGzKh6ir5AUP8bpWb6UXwKqqs+iB7yq6Gx9hYoD
	 SH9RHRMeFOYZXaGp6hq3gw2KuhCLsVBPVAmIMNPNbJ2WPRevOmFmkSWbckI2GhEI4n
	 PGxpoxeYA178HeKqLHBl773YOxf4bo42GkrwE5wyErJDHMMMj7htlxALFC1tXlVKAh
	 7KGc/8Vh3NJAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB0BEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 10:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168691254870.16170.18405604152411540216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27720dda34ed2e9c36e5d2716cf8291017dfc28a390b1227943ead58cef51e13
Date: Fri, 16 Jun 2023 10:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686912548
