Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36BCEC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E38C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662807653;
	bh=97ubK6OZ4XK4cg1Prgzfb8QccDvKKqxlQjxOJ/zhjRA=;
	h=To:Subject:From:Date:From;
	b=eTKcqRSOHXrtji/B9RS+fmJC+qEsH+WVhZgVLIs/0pfTqUOp6X4/S2sC219FIR2aI
	 8Twk7fICQUCYeGc4LJnO8/2lA6eplmDx5mUlGnNyPbbF0VoWVQFSD4q/2ENZ4aMd4u
	 YRWkpT6PJ3MI4W335Tnt3O7fUq4cJgtuVyfl00lXehM+Kj4AvgksMC3MOVx4spu374
	 WSDG9SLrHuowIYicB9c3SG80YD+aLfTwO9qGa8d8bKoDA2EuqzEZV+rQPn+RqqqTlB
	 O9H8I29lMXDp1VCed6Q/LaV0qtvcDTAbT76HnkIRSqqD/GoMAECu/9ithCiH7XucjS
	 nWsJoVRGfUL7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59A72C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280765335.31248.5194862141187361802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860542a3f1cba38dbe54e878a53890e503525f9616e0840ecd95335585568209
Date: Sat, 10 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662807653
