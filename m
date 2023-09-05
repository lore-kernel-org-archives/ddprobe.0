Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706291C2F
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 09:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA931C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693904648;
	bh=BZkkObwkbXqUjSoZdNyZWcV+wt9h7kK2MjhLUCSwp5g=;
	h=To:Subject:From:Date:From;
	b=nFrjruxI5ViC7dPdzj3lcFw1lDp04YjT+gEqzR0QuRdaDdrabFMbTzJWs38iH3ZeN
	 KkrK9JZlqIrw/udIF3eTqE33Z04abTw5YMnh+wy7bG6wJOQOJBqRwLZImTKJeKJX8J
	 H8M57oafQ/AgLIUsyK+dUygK5ZV9Spq9lUEQPeyS9QGwd4BW7QqUBysizBREKd+xwV
	 nY+LSvNWK5q917JAPx2aNAnYHMiZ29ue9h1F3WJ7fAqc1/o+AnvNGmKc4nHqfEeUH9
	 Ng/SKN03aeVDo/xllyb2mKTsulkgIeNqYNggCu/OTI55xK3+BVeke1MubI3CQExbDy
	 Bp6+Qk22ePbMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC354C83F3E
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169390464869.6554.12260038062730253933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ccd97f94beaa824b4c67d6e8249e843431483f4a260006fe82e1e25efab7bc
Date: Tue, 05 Sep 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693904648
