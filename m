Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044681108
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 01:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDB5C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 01:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691112188;
	bh=ch261eUVO/EYX4WgStlb6Zs4+W2PI3WwT/+nwdZhMg0=;
	h=To:Subject:From:Date:From;
	b=Ji8rAb0h4BzkBWjgvK4gU3vtKZbcGuhBapeOo24otmkaFKL2jULk+KAvmahlR2LaN
	 U1KmFqrulnOiNg8arSauaScO1LREUbWl7pD8/6RUTqYnuTe0IcGWXBvoK9bmSPUtl1
	 3t4moMbnsypN5+iFg+CcPLLqDrYfuz42KQju1oxb9WoyvkTWDhI3JSdpZ0O7WhpJfY
	 fulWY7K3sp10o4YaijbHCdYsOa/ZrAiS7MWGsGvklJcN3AqMLimKJ28FYwsWbIqb7h
	 k3xsQUc2Z7l9BgM2+1jhoAZ0aXMuHr1uS+u6x9JecitAhl3Haa6hY3axjR65ZeG106
	 Ot5inwAt4AL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B7C0015E
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 01:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169111218868.9404.17373908216767663740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459fcff430bdda2cb9f1a920dfdee0534e37aff0880b704d7bf357e630af5e74
Date: Fri, 04 Aug 2023 01:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691112188
