Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C0117739
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D213BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687864988;
	bh=sQNBX+oApxZjtIBOf6Fpf+/pLjGLs01zBnou4m7rhFI=;
	h=To:Subject:From:Date:From;
	b=KioBvLOEEZ3Uraofn4s5cevGHAOROdMur8fHGTTEDi22B9JtbVWol415GIO+Zy1Hr
	 IA4maNJOWuWh9s3m8VBME7DOwnkciGtZQ+90ogHZ7Ox40CbZ7dvrq+bWGQ9vQtUyJ+
	 n9haVO/at1UFJjUxW+pRKoisZ1cRE/zaDbuNcudINcsclNhvzTmJVUR4HhFQ+RdQ/I
	 IBuWnOWU4kDmTMAlShRIovkepNHomfSAA+8ZCjtGTCOvPk+oAdb65xurMd3XVj51Ps
	 Yw3Aa1eZFJZDSJuYEvP9Ly1RMB9eSiugIh+V3NYkG74Irk1d7MoXPWd8Yh+dsI4xl+
	 tAFSMGHBwkAmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3704EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786498872.28030.13285915710798870364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9ce9a1326ece19fa6492c2f4d6402c35376d8323660fd3cc648a669ed966a1
Date: Tue, 27 Jun 2023 11:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687864988
