Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288FE62D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 03:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC69C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 03:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679023205;
	bh=bytP7G/210rXDU25acyjCGT2ACcjeHxg5HmCbWUXZUg=;
	h=To:Subject:From:Date:From;
	b=NRHOTmZuTX1gCbtfywqsXXe0LjLDCqlOjugpa2f0LEQUHhtquVoh0laIjc/eH+j0u
	 +eyaF3E+v5YsMrMpaxqxsLClvrRLjQH/wA/UrldfhEYYw6/fqK/nIvZ5Kpd2PugKCh
	 X7iHmYLSghvhlDPgy35gJg+0gshOQZSvcjatj/ocor3rx/xUNN5YXfv7fgO88mliIM
	 MD8Y7xdI/oFxDTRk25o4qFLuUkM2wGf7zyrALxVTZYUksafZTEOcFYe78TmEJivF7E
	 cCTd/ZMWsahG5qinjddPbMrdX/5nKHkOoJ8dv+VDGROAZxtK8QXIXP6Ni+0AmPweAC
	 g+G6hJRGCYt8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3628C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 03:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167902320572.7349.12197496481156334972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea96dc1e649537366e717af5a89970c89ddf4b0ef25e840e98afce2971f93ea
Date: Fri, 17 Mar 2023 03:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679023205
