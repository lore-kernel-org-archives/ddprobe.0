Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8313362A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7003C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690025528;
	bh=DOaDNGjthLoQc0JkO60hsiMCxPE0PnuoyrFAiMlBFys=;
	h=To:Subject:From:Date:From;
	b=rTiFKDfSlBg7rN15by6pjQY1TI32l9S8EPiEmPsf8H8DmOMAYWAyrsJBNVGHYT2d4
	 szqMIYWNt48xk1XZEvStjJJ3WOy9iTgBhDB7ydN/QY3ggtlj+AxB3NaaiFIXptCtlS
	 QQAAWzMVe1TpLFKLf5VbkZZGyO17GNHR+/vnmC+05VBChsAiLwaMehS1P/LoaAmIfp
	 GglRBzm6ZKbf7lIhQJ8+GEb39Vgpq1JoZGhSirp7/7werz7NOXfVguHS6ZIV7m35Pz
	 XQid57u+9sphGyZqHEQED8nUE/O6rdgue6qLExsp487ig1vjbBSNDcsQXj+0HCvPbt
	 tuRTO/H5rneYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD8AEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169002552869.31899.17196503093533306122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8bcbb390615b3f4aa77ca4fa1ef689c8eccd36b7f56c2c46112ae69d4d0834
Date: Sat, 22 Jul 2023 11:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690025528
