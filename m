Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7761C15
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 07:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10A4C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 07:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688541368;
	bh=tRQgpcx4/A4B/TKG2I26RuWmbQ/RmBhYDeoZcginUsE=;
	h=To:Subject:From:Date:From;
	b=AahM6cUI0/LB1Vartz/w2nhzQVjt+LzmBSSeQ6NUnwtr2KIAdnacApZLBdK0+fQQE
	 yqFJyIjOi3z0rmcTyM4odaE5mTE5pcs3K/zltAvjnRRO6M72Vj6GHiVsZIDLyrXV+h
	 CkEpo3QnAIrb/oYmyfrRyUhsVwa/lHv3Vop7oIWQ0VgmaDkxhvLHXNUvs2aCtNAL/H
	 TNXg7ytCYEC3nPlFlyiJ+7zcKGEPwMz1d9UBjfbxWOC3271JHnvpWpH2ASLXs/qVbV
	 v1iaS3jcw6EasYavj5SAWy8B5Gr0bHHcKn+UsUuxSN9iJUySnFGw6trG0YY9oQu1EC
	 QGJbtMtyRv3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7864EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 07:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168854136874.14054.7046869898926889042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418c8f8cdd862456ef6fcd7fb3d1b01a46a91e7756712952b91d59437c00425b
Date: Wed, 05 Jul 2023 07:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688541368
