Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2F833DA
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 10:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A3CC4339B
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 10:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680602826;
	bh=7kcdgtbtezobunxIXt6DFJPuHCKhQidMnpnZJynfKgs=;
	h=To:Subject:From:Date:From;
	b=SqKjhNNE0bMmuyqI/idiHi+l4tDPXgVieluGALGbNZ3O+zWBLRC9HOjxKRLkT2E/r
	 m0YK1p082NVyVblf+O19Ov6Zu2EMbFGMkYHpCbD8Zf7JxHJ1IAoB5u57E8GJZTLH6J
	 Pz//lj2jlAmtTyapMtJDBppblH+v1ugMsV1/iIWLlhNJnujwEiyCSyefdLD7lScWxX
	 aAaouy37baPT0IAJW9nX0wIGc/gGEITae2cci6p8BdvA+3zSni2hwAmoxt4IArq+PD
	 nzgODITe/IEB21zy8K/41RhChz9Mezjbw28CCef5rkaP9so+R3SLYRZyoUNuQtil55
	 X1SPZ/FtOZfRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2876C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 10:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168060282583.7851.7471600829640027241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df600cef1fb87660d82fce8078848519b9402c680217a61da93dea596228021b
Date: Tue, 04 Apr 2023 10:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680602825
