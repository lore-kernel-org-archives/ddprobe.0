Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CA1446B3
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZm/ZDOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC44C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703678296;
	bh=YyiCX3cGcK8hCxBBYKAxn+Pe4rTqc3AM0qI8eYLbc50=;
	h=To:Subject:From:Date:From;
	b=jZm/ZDOV7/CnFrHnSUa4JYXzeGDjjocnB5KAr8uO6n6w2xXV70ChnAj92p5oYOiw6
	 sXMdJLCbgD1P07aWCGwA4aI11XQFQdw9XIk4+3Y7/XxFzByujV0JbvaL6namnlvfoY
	 Nl7zbG/2Qsg4Zw+4+3topUHqlQSVKZBFnpDnAXA8q1Av6vxgvcMh5OyFaIrMryMGxa
	 DTWjLGH54CkU95DJ9EETX713sSFSCoPe+gjK+aHTbEeR2CXNVe30qNMREIK6XY3INK
	 Lk2WgGYZVP7O3wcGiR6075jZpg2YD8sTULaBSM9d73raxax3ubVRyMdyex4wCtW1/Q
	 cCC78RkT4woXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78B03C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170367829645.4098.8335248493563985206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba0d6f9c09c789349a8318b7329e47cfd57bd42b38dfc63e603003d051100a6
Date: Wed, 27 Dec 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703678296
