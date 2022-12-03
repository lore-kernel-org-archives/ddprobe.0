Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E7C7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C66C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670054454;
	bh=aRNzUw2AlDW4cumC5xaO0NhF7aY2ZZC7lzE2dmHmbis=;
	h=To:Subject:From:Date:From;
	b=CzTz/BGD4nK9z5vBasOtVhEkdFaAGkM9Q1FadahnF1hYJ0oL+PuTydwEXCm/0/SkS
	 VkEPzEXVX0HR8eMmiETfKl9pZSGJ7JWXneF2R6ST7Wz2M1nWrpM3EJ3fImaYz9nKSx
	 Qfco1MTWORhVSNspUq3f3bWYfUe22iKXOXF0HVYXVKrad5sr94J6ua/oDsmE/Ot4TY
	 PyoVFVoRkBe0CXrsvwWumesAcptf+4SqrjDMpojQMKz3tuwDFcfQFbr6xtSZhlFLOz
	 RhImny87LloX+ith2olgN4+x13biwtz6cMMczreuP7pk6bc/st8xp9PJvQJDcIyZmK
	 cZx5oD/Y7cV6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58262C4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167005445433.27283.11328298131570965412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b33cc9a5466128440244f7b468438b80fce6c001610e7eaaac1498afe3e6fe7
Date: Sat, 03 Dec 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670054454
