Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89A8365
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA55C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665757853;
	bh=ALG2N+ESL59Fphm/XH0vwe5Ej+ILOKKpXZHl/6ZJM/o=;
	h=To:Subject:From:Date:From;
	b=udECZFfSMvXOUYkuIkyEJQ8MhgI7Ev/bfnm4YvOze3HrgM1JLRzDXa5JvpRjb9Dsa
	 gBrRg6TgH+NJhmkvpKGuF7adT8BX/afpxd592LmXKxfRhdZAqNwWsRsyUUXaJs8sbq
	 3G2X/dKjf/6f4yKf7Ax9J2uP5DDeGAn+FRiFKYN+QFIgWr66pN6y249xEwwoJ3DJUv
	 2A3sSWOijQ/7Z8W7gIb9PBwQbpdD7wgiYIr1rMKXNsYFoptOcmG9QpTGSrOM1/gU8Y
	 OabFXRaT6KBSqCXVLBuxKQxNjC56mV7gcEOT6ajXU8Sh76s0Rqsy5C56UKWfZQvPcZ
	 NXOyPW1PFCC0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 586AFC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575785335.28108.13478233674205131202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91e72f28ccd737c7597a441d5d56f8cb476fa4c5363b1d7ecfa31d27e7d5d85
Date: Fri, 14 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665757853
