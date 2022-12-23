Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3F68476
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5DBC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671805287;
	bh=1zCzeGdKV1pssqy1Hhtl0FLP/wdSWNpK2157Qy1L1aY=;
	h=To:Subject:From:Date:From;
	b=Iu6qtJ5F/ZN8QSsmSXeQrPVfid+sJfrP15xHxAbD92UskFr04YqZ7f1uTF8Z8HCYi
	 69q8spy3I2chbX8m2hHrdkwp6JTlaP1CsKBC85KoZAXEG5zfD3m4diIl5yyYlXyWrx
	 BTpIldEJ+pey9Xp8CMleQJuUtiMdZT4SD/ZqbRF7JiASigCVqPK1lU9/UBQQVMdk81
	 WdGqT3h0APoV+Rv+jP0rrrtmwjLjX1uM7/4tYE5CTC/yOOWb5c3ZBCeuEWO36CRiej
	 IVhlaffYaEZLdAx1uKdkpfge/VtyOeRG+JRFBxJlY61R6KBIVrbFZZ1sL2QDRZRFkW
	 0tx7iG99OiHjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DEFC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180528740.25878.12161693544179804026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1dfdff9009b29158e7eb1a1219d6b84a0b41bdcd400631998ea279a8876281
Date: Fri, 23 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671805287
