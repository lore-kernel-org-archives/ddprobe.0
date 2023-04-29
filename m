Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F447136A
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC988C433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682735705;
	bh=IcVn5DiKLS3aSy4/D03PEmTAe3ixAEbVfrHPLDyscTk=;
	h=To:Subject:From:Date:From;
	b=h+1jd8eyG6z1Pxqj1JyqEzgDGbqH2QgyK7OOe88fR9u7h8ShccD7WTaORyV1jjhA4
	 /KKwpJlfmJiD0Md/RjsSAEPQBitD/0NQc/z0l+UTTe2lvcNp6/C3kj/4gG7DQh+939
	 R3QLdm5wE4Bx80n7yw/qiFcVo4HMY1Hmfc/8HWzsAb4/JSQ0a0gZ/WQbWIptiZgwAY
	 9WcH0Jcik4CWc84jb/U3O0SEbtjFz38M1ihhWS6H0NGivYuL7NG+QgwCCKWK4N6zIx
	 6AKR/CyTDjK0Fg0jqB0uGe7zhQAtjRflQOw0OV5Zn0BbLil+0pm2GrfOE8gRUlmMXR
	 rO97K8Z1PNFhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF248C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168273570576.30820.7774030987413439644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d22bd5e10b53f7f3c58c9037a037bc75e3f211709717fc66909687bc27d162
Date: Sat, 29 Apr 2023 02:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682735705
