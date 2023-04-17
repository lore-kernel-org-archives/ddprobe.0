Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539EA8460
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 15:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E97AFC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 15:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681747085;
	bh=GhesIJ99L44HrQRoXDXBQxuFtPD24DiO/QisSnEze1s=;
	h=To:Subject:From:Date:From;
	b=FKRjRO7SyN6tLy1XZR2SL6wyXkVjPvqEu8u4p3yqfWG/LxiBPvVeFjdaz71KSejXm
	 ubrW3D2n5xsGmHjSKN+m2AY90VL6ZG43V+U/uPZsIJpk8R4ZG9hAGTI62LDXXR7G6V
	 RfpoAC+lyLb1Kt3w4NAFY8oitBM1Sp/6xwXf8Nm5pZuPRMa5EEbWsbJJnZvZxlJMz8
	 s0V8bRSFz9lmF1pIz26GZKz0jAy7LXXHuuz/d5o8NMnkYhQyucHDFSwGnortggMzrW
	 tUalW5sf9atIbf2G2edMOA1+FQnfJ231y2lsUP4n8iLaScYAkn/iEc4J7YPPDhNlw1
	 Q4tPUEZz3oSBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA2CC77B7A
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 15:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168174708583.17298.15688152009463005765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0fc860d42567e4ee44113eba2c1c37718d41532b996c8f275e113137138cfa
Date: Mon, 17 Apr 2023 15:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681747085
