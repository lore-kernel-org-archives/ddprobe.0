Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671CB156F8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 22:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8127C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 22:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691534588;
	bh=fiCw/ssxgFxsyOyjhJGPCmxZukTTaUE559Sqio0k7Wk=;
	h=To:Subject:From:Date:From;
	b=c0Sa/abVqPpqCEEDqKJnawDoW8t9pGt7o26KrCap3Ix+Azj79NfzKsvpI4DVbMraW
	 zZgbEeM1fzNEITUyYQ5B8kI4h/9hZc0pHsbE5j6TSIWuFRvltSFr+fM/t3uyXemlx0
	 H/GhR/L9YcZFQhEUoLGiR6VJJMKVOkcoTOEvKBzhSEsQl+4bepVJu3iWW63MzPCU2q
	 aIIaf373p0IGKYOf8Ur7ALDqGMaD7wo+CAOUxWoNT7GkAFHQuNcbVj7qdtIyQt60qa
	 skRfC0JrJ5jLqh9qCLIm2NaxXGTF/soYu7FpuZvk0zgDOJuzpmF/Vb+tgABvMII6gB
	 isF0MYMYL+ybA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0529C001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 22:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169153458875.21680.15369159776621081631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c352bdfd498c30b17e97e4fc3a6305ef421536c276045b3b38d664f831caf2
Date: Tue, 08 Aug 2023 22:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691534588
