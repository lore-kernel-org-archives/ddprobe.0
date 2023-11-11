Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140221DA50
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJzo08iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CFE9C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699739296;
	bh=D4AZW4mVaHGnRGb8GH/kWIvh20zXzAFrqhUYQbI1vHQ=;
	h=To:Subject:From:Date:From;
	b=lJzo08iuIi7vrAq40oh6wGK2yG8DfxANzc1l7ZPmotPIErxHzl88vrvBwpAGTI9mJ
	 Afl9V0QSgMEeR1X3QQbuH0vyaEJf/3ki8mh4zE6quDjVno35wF0SxIiM8lSTtvBqy3
	 MPpW2loPbAIWyV2UMOJo2S6SE+ARZpqzWxe9SC17yj7/9zr8h/T7aBghS1pRDHKnlR
	 YnJt/AOf31XLAVYQS0mtHMmN9CmHX/Ex4jH92OCin/2BaRDpO7/hXY0N+1KZ1Czzqh
	 B/qV0zea6pNELD5EQDmcQsxPVKHFRMKN+H4wiUZdg5B1S1eKCxzxZAEsAcGTe3AowX
	 2LGJj/8L87+jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E778C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169973929643.17903.10624457094062424671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f20d52a8c1784562c15ce53523af0fa11722508fd992497527413055a0baed1
Date: Sat, 11 Nov 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699739296
