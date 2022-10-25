Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89777E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F53BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666687253;
	bh=F3h92Bo4JgHRl+Om8IHGJCLpXmc1zXyfH+6e12yG/vw=;
	h=To:Subject:From:Date:From;
	b=u8MLiiT6ACqiwqEWki1HIvceqt+8zAj9/OEvQFg7LPw6I/UvylmsdfvNCrStRe8oM
	 7o46mUWIuUztGqmqAv4Ewws0KC7DG8A6J1qqJ0uAjFspKWCh3rWFk2CfI4y/+Qj0yJ
	 28OoBsQ9MH2GrSu/VF4mfxNJ1XO0otlF+qqkfOsBvk+BBPD1grYRs+yA9cuMCv7NZ3
	 ajcqjqQsRyfYwtBhmgwRWaT9wsbd4wDfOAHUodWaeJfVW3IukHAIINsL7dXKrbWZx6
	 QlYx0qGwq04g2gUtRniZKJ6bQ8uk8w+hw3Vvf4pbSusut39F0setVBUnJPCN4yLRxS
	 Bgqf8NIAfeOiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CD7C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166668725334.13143.15815822194212074944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e116a013ac2418e552006406e10e01d37c7473f0bd2bec79550d5953869cea
Date: Tue, 25 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666687253
