Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427FB7F
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF525C433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692677048;
	bh=sL5BrQfqph4QLQEfIwUD512CtaiJUZjl4Pg6yYVwRvI=;
	h=To:Subject:From:Date:From;
	b=VRSHvOT9BPrs/BJ+KuHqfKyt9ybrdhOtYi+TIhneh/dEIPQ1MkvWSizRhgt6JTV2i
	 +IKno/x+rsr7akShQInvBWECFt8eCQImLJByeqm7V5+LGdPxM9k7btBH9vuZy9Q+Ev
	 LVkXN/2uUCE3fOfeAe1oDzpxExQlKmpZb5GudcwV95E/jf5mlhh8lFNJCBMYgykuzD
	 6lMHYYMiqkbfOPJW0bK74cLy1IFW/5WjBib3rk68Z8ygjP67M9KZKxyuTVrRfUdjqB
	 q5q430h4PaCZqugpUnVSZqkqvV0BHtnW0/Jzk1TGPc84My/Vjbivn+dANI80chrOHQ
	 g34q++OvLsxbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FBFEE49A3
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169267704867.1842.2997092726090107128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2803b513fa072d2697c636b2e5101cfd1a5539086a7b58eae13f4adc28161bdd
Date: Tue, 22 Aug 2023 04:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692677048
