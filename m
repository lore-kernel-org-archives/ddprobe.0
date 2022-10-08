Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B311114
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EEDC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665228653;
	bh=Ac9By124aOe3lU5so+IzD4DMxMFtC8k9uy52v2cQ6oI=;
	h=To:Subject:From:Date:From;
	b=bpPqCqN8qjm/Lm9v/tOiEnUd1gE1wBJFXBkiCaX95Wx6U/FtTSrU6Qw5a8uegR4o+
	 ZCcyMbYApJFpHCRI81epHC8sNkL2ZhLqdkW80xx+riCb1Mz2MpoC/h7zuEGjBNCbIv
	 GC8+mYtg+A9yfoagK60Uz2FkzP7RZ0RrHkU+NByPDfZrgzS/CbquqA0xkBXSI1ZBQh
	 mbI6LBD4HSCWkvwb/rfx2ERIQLFwOAEE3lT46k4eSLOtggDWW2UUC8IyJ7G/YKaAvK
	 t9coyJhMdzYjyHE4O4VDZKobMxR1ON64ZytdnkKbQ7KToKrflG98kv4VeBn8NGmB5d
	 hKi5aJoIt+iYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52806C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166522865331.11324.13563605837273320108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f7c55b914332101b03937503756e5ac2d3b05b1b4958e7c1cae4f60f97e59f
Date: Sat, 08 Oct 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665228653
