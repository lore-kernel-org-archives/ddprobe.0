Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371506132
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 16:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9B8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 16:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682179265;
	bh=2utWTfuDak1KOxXa0jEpI4XWlKdIo6l1zXmfRLNFTyg=;
	h=To:Subject:From:Date:From;
	b=SvoUwXNcibKHVFMyX6TNE+22ag13ZALH0GbDCv3P9h3cIITbZX6KfOObqmI8qKqei
	 pYXT3O9jtd8Eaj1fGWc5FBtjOTX4UgNtfonV+FhPGprvS66MvT+09pb/lLc64Sbgbu
	 TwPu/WAm8sgXtqbsyPCkNgWmm6Lq2S/AigsU5KWvjxUJdfrrYVf13Inx7jNQIjRmLI
	 uA6EIUwy1oTN57PJTAiODPZAIPybXi/nOJIf8t6aXteMyw530OOTrrACP8xWrjbB5p
	 pRmL92n8QvGk705XyvfxGiuc+30lR5P6eOsdZ6jYIoJXkJ39DgDKHECwbi6R1kM+HL
	 h2EZilIch6CUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E86C7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 16:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168217926579.7208.17678412853136631943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535ad2c1bbb3f5a76bd466e5892f54c3990098589cee0457279a8d33551c855d
Date: Sat, 22 Apr 2023 16:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682179265
