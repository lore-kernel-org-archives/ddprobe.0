Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D3E322E
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F71C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671896487;
	bh=qM3a5QBWRc5kOJQGMWGC4qxDGDxlxnJBIBgfBdSkqaE=;
	h=To:Subject:From:Date:From;
	b=SPnLkdcYVKd1mt3TKQxP8oule0Fao0303pZYZwghc9CrMGB69ZzXC9Zp8S2O8CNuD
	 6yJkqyrsHnHQnSAVXdmyHft0gRaH4ACXNHkpHeL5aLK0iTIn7W0X4B7gXsbwz94ZdD
	 8sH812ehETLQMX7l40VoWRlUo6cKAwRu4DiSPWX/mOuaYaGRfO+VUtyj7TAuSxZ9tP
	 OmHl7RNmOGgF3yxztn5dweKLnUKW/SRmvX3cu14SVA1xpIGqJZQQC++K5E9VTHz0Ve
	 wJ1c/k2ZlmOVipTAFYP16WcBBYD7ZPWQpgEQd8j/cw4HpVc3DZVBNJfUt7FqjDkY6i
	 es+byG2rsKJ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA8BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189648737.28192.12656102070195774204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2836b433e98257d439cd6df97db539cd5957e259d51c7cda1975d94230bdd2b1
Date: Sat, 24 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671896487
