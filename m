Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A891877
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U25fJ8Ze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F47C433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699600096;
	bh=0ROYlKIIMfbsRqHNUuhjd5r0WKV9imInliBCIR+NMFA=;
	h=To:Subject:From:Date:From;
	b=U25fJ8ZeE4iXXjFcZGiDdRRRFa+ZJSXB50clF1Bd6I8zG25Zxzd+dOBgZmBk0t+r4
	 Zjj/gAn777h3XuMf5Frgs5wRckbZCLbCvXSn/4dg7wNYy34kfyeKMgEoEsA7nyIIQ7
	 mENyXjk+4BpTvkmTsX9thTYHbMdpz2O3VlCTi/m1hdAfExdDXa5upaMvbAruRJpPPE
	 ntH0Vd/wQhPSFaaOioGmjWHDACOVNuIUiC499LkPynwKLF9opoLAdX3OkbZHTjtn+P
	 f+ejFjItbMcrCiFpkqc5ZZXadulVLKzdPipIU8A2PYG6BUHPGBwsKXaLixE8kQvJic
	 7gUaPNqBpAw+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DE6C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169960009639.21769.13693653860398942990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6979d4fde438010271959f6b41305ef754aa61a0d86440d85a41c8c5b256cd32
Date: Fri, 10 Nov 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699600096
