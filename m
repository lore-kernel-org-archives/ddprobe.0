Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB2019E69
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 18:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52CEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 18:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686938948;
	bh=K3NrbfJzYGHLZapEm1OuKe/kOsasCJKGhYGzlBAMMV4=;
	h=To:Subject:From:Date:From;
	b=c1AQ9NM051i/SlvQOTvA9QzimgXkYI5rAygase2NmvX0egVYRjC7y9OoaoNAaySb2
	 fdOi0fCNcANjolea85lWLPKKrPzga1RCDpxgBMly+xvUDuhPnZCuBHazgI/nlY9aXF
	 oJbL0W7I0Qg4nCX9H2q9IGgSGCmU4MPFfB398VysTpmsUOPZxUSx6q7qKZUkN7KHBd
	 tczAtUSaMKoUL9MDj3dAaTioMkdjXjx8im61o7Zfs/pS5ZfvNw5Z8afFBfZ1QDkbG5
	 AzhFS0Hpv+gHfYevPP1Zf9JCX3aV/9GkVWFwXMpxkwpxPuZZQaqbxD4C1dpEB+n1IB
	 xPCGsZy3DOCHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B744BEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 18:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168693894874.11952.16344639407715398469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbfdc35d9842b03e00b0cf602edb27d52553bc591ea2864ab039f361d65cd11
Date: Fri, 16 Jun 2023 18:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686938948
