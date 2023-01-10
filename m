Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6195192
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 857F7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673325087;
	bh=6MUAs0o0cjqnwekrxt8wplsofrFbrbzCEmj7NY/mGjI=;
	h=To:Subject:From:Date:From;
	b=StLcu82RFwebBIYiFhsR9HuqJ471d0xym8NPyZ6UMg+K+PRca0JoqZZfZsYG2PNOs
	 15iVKQhmJeIQl/TL7tSazWJl03MwZru0p5aTFxMI/q2i52gw2vlyLR+zuZ5fYpoISk
	 CmNqx0mcQighdqL8RpeqHUhSivlaSroy7hM327J3GHmmnwKCTUl+wb9tK7ynUKX0RW
	 WJ04/XObnZw/G38GBXyGk84sa1hyk4C2sfRTZ2qY9ovjYDzmyet3EHo6h73Yc/z1aQ
	 aKQH4hqz7nL+gFpDO6Db9cJQG49vo30/SWAltMfGWOKEUBKFnYvNuRQWJF+AGakhgq
	 PgBaxzhoAw81w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66CDBC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167332508741.2785.4036657037781712367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe630e98112546ef141d242761b6e44c25978673c04c87e88abc1b71efa7449
Date: Tue, 10 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673325087
