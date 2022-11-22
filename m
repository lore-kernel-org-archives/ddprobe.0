Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8218805
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ACAEC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669091454;
	bh=mr7Bv31pgzqa93KBNcMJykIvPt13Hg0lJW916md7pa8=;
	h=To:Subject:From:Date:From;
	b=Y0fsXhsuoTf+52f+JqEfx2LGgz6eaTiy9A6FsQlAJYCEEhxtjWanS66HsfK+kWj7n
	 T+lWNukNVX1bfiguZcHHOn1cnFsPhQhWQUECcdkeppkpqeHDSll5QQkAaSeoU0XIx5
	 wq27dE3aWGfieFiEcreYm5qVgbPBuHZq4y42wXmduN5L0NgMc3gnQMExMy6yAbvnx1
	 FzG6o1mkC07/ub4WTzMk/Yf0IMnbnNbp2K+QTRUjOy1u++kDa9Whe5B4SjUHM1hZuW
	 4gADvS/1/RU1AuAmwZAtJp++u12iFZmqdjUpyvgaJR+v2oS2MrY3oFJuWWdEXtqmqK
	 b4inaDwmMUHBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C05C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166909145433.19145.14312460334476160498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c60fd56e4e7722bcead51025d8954ef283b46f3ff06b75422cb4f6cf18b99ff
Date: Tue, 22 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669091454
