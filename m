Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AE71C13
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA48C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668412254;
	bh=P0us0HmYHKCClWZiMS320Shs+uNsSCbnMXCsPnnR7GQ=;
	h=To:Subject:From:Date:From;
	b=DbJAAUhUh5mb7gh+rzSmvvsM7fMmh1lZ+/deUWTuwJP+l69roNF6/CI6j0MR6W2W9
	 pWhz6GMKX0imdeSVKBRsZ3l2gJPadInu7+IZ2rjfHQvFO+t3FN2KvOTQtflfmtBr1U
	 yit0iOzCgixMiCl+TPt0RGOvd3wrta1ZO0iXvAA0dkjcLk6bBF1Q8oGz3tR53W7ozE
	 E+IWCvFp7L5ZPXc8TVi37Y0JXzeZBaXqYBtbb8RpBYftE1nz4XHaPBEYlSTZ78VMQH
	 P4YOn7bmyXLMfHyorygRaWUyqYev14SO8fOaS+d5W2fxDm1GcI2x8p0vP6GhPStI/0
	 QNJ1/rg10GG1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DE7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841225432.16790.8537399527172056325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dea26eb95efaa453378fe2f055d2cfd3e4a6efb68d3c752fc21ddf6e83c6b96
Date: Mon, 14 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668412254
