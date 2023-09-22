Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F8018B0C
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 11:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A0DC433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 11:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695380708;
	bh=le7F+pKvgHeIKLT1oUUdpaDLvGA36rwF9PiPUXYC8Io=;
	h=To:Subject:From:Date:From;
	b=P/+zY6h6PIVQpXozVwTi9plzTWiF+hz36apgxmCXbJqzLQEoU1NGy8ZbvIoVreqf2
	 hxcBdljexzUhI8QyADb4pMQzWSAW/8+rt9e/VRDjP1UPAphsHsmOscPE1JaR98U3P8
	 yIwPLTrOI4zMPHN3zLqVIwuq2QYYrkLcbEsD+/+BFZHgZ0lBXJ2drifRYkn1BJAKFI
	 8cAp+Ecgjbn5fiQEuy/dttQ9K2A9YtQs73B3N1qK9blq3jvpI0Hcnk7HafJtHXqctc
	 DqYZuhqtd021+7/m2DZxzIIvv6mwAOZMUiA28UHIclBpZ/8rjrJ3/DiNmNmZ2rsIOx
	 Xd+rVQ0B3TpXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50B6CD4F57
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 11:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169538070872.2263.3114492532214672131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b07f27f0129a54c70a664c26128b26e06e496ffa9ed6e5075b54e13fe57f37f
Date: Fri, 22 Sep 2023 11:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695380708
