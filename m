Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A1C6FA2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 18:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE27FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680116226;
	bh=yF9DG6HnH1i+9jnohjgrFXZ6ztOtgff+5tlOdGSL3ak=;
	h=To:Subject:From:Date:From;
	b=Ov+RV/gvxioIhBak2AnmcyjrhEt4QHBfZK6Ckk5a9i64GTlffs2cQVP2mudN60rwr
	 YX6KnztYsTE3HXlEaQyY7VJfLY/AygfNmQ3s0pThhtNDK+8o+KpYJmINvKy7KO1Bkr
	 gw3Btej3a/pkKCZZhCRsCId+5uIrvS8n5JC6CGF3taW0f/uJDEh80D5gFzfw6gSRQC
	 L8FEsF2O5jnvB02SUBLLAd+OarAiurU2UDrPguoVsy4sYf8XUB2zcFoVx6LbEJbQOu
	 zLp5eHqRj211I1SVwYPBCGzTnotwTv3vMHnikmoVxQuw1fGTweZlImN98dpULAe3eu
	 YRSNEXIFDBDLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD781C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 18:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168011622583.23614.5723346018780662733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a01d542a78829fd9237d32f231463390b706ab790215a6d2fae33c5db4ee8b
Date: Wed, 29 Mar 2023 18:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680116225
