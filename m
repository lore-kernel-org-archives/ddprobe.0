Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72B41FC2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86A98C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673947887;
	bh=ROak44auPIE9rcf1VqxrQV2qDPhBd27UGoKgwNnIBrk=;
	h=To:Subject:From:Date:From;
	b=nTM+cmhKXdKEM0zbTIMWY8/U2VR0FmQi/jYR9Fd98pMYuLbhU2zaEqcUHvnALpjEh
	 ek8kNaMdpNWyKrZZ9MTIhvrV6mDOJxkVP7eFHQz5MRnnStb9CBMdzrTWqguK6Jshbu
	 S8RrBZtO4CKTEGhCpJIPGFWG8NIMikbiIt8A/NdXLW8q1e0tdVfoSSfAI48hy19XTX
	 bm0i5Wb94omsLwgHbMOVH2auFfZySCGQLhxB0bInPdmrW3ylrlUR3QgYAxFjzhhDm8
	 oigpBo/Sc0O8nbAQRKgYuoPyJTqZipM8Qnnk3bvG50vwY8TUW67CYqyYzTD5I6t4lr
	 T0ykQpm8R3wpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE53C63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394788744.31998.8792853208338691201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbad5c843c48ffdacefcb73ca8c5c19bfac49947ef43a59d10b7eb0ac5c24b3
Date: Tue, 17 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673947887
