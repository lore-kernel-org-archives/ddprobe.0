Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E2C1BB23
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 15:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0742C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 15:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691596388;
	bh=BrMrdLy/ab4LvTlhQtLKoej6LMlo10sgzyRhe7FK+ck=;
	h=To:Subject:From:Date:From;
	b=Q+n/YL0o8M4p1GlF1KLt4XPTuH169BNZ7K98I3FwnDwsiPqH7ZS970uQJjo3ow0j+
	 RhA5Pf872q+QSgc3W7BfS2+OJFFdML4GJVapiLDXIgOOowfoNLL78NtY/Rwvgd/rFf
	 CweciqRhrwmh5fvocz/twC3XoDz0oDELQyky7oUd0hjl8JLxrMwRxVrEH1ZvvRKyhd
	 80zfqZlkwUBjXmMi8/9jbiXyOqblWS5ayQOhzOxD8EldJjVMxrYacfy9lc6bJEOGyY
	 r5lXX64i9bz/ZDCcyAWcmK+gaLtbkr+LyrO3B3oNDs0+TjZ0MpOEJjSJ3GIAN3pBYW
	 ET9IXPRhFgdng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A6CC001B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 15:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169159638866.26101.5219424790912448735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7df232502f956f69d68e0c419b9cfd12e3f7945df56c328d0e1d44d0305b61
Date: Wed, 09 Aug 2023 15:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691596388
