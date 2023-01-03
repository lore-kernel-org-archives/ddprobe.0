Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2DE7F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8077EC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672706487;
	bh=rRVMCNCBKhStF42i8hSFMkU9VFkm6RQy6VOwZJSQbTs=;
	h=To:Subject:From:Date:From;
	b=dYBBGeYLafEVV8W0ifbBPWzdq1XmwhVtovmCTduZAYf2tU5XDOANDFs1oBhtWVtcn
	 D53VxgkjY2ug3pzEVhMCDguhKVDKI8jqNzE2WfVvQ1PlKb4BHCk/c0bE++mfRagm2S
	 fG7NoRJZzfkU1HnHUeCvpGyq8wjdxklFRCd9RXyA0fEcKLr4x1tjPcapD6G74MVVLX
	 ypsveR2ZhU40bioJYF8N2z3RyL4lUcCd6Ftl8ZEj4eKnVSQJ1dEoXV3ZXN4OMmHegH
	 ITra00MxIbJRCQXQjgreFYtiHwA1p90VtwJJxTtRIAM3kFuoHWjgI3XFf9yZAH4c97
	 VwpGlDJBI8ehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B36C3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270648737.23777.8031165728106059119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b84b60973fb8a6ae94b3141e7b349cea07219c467b05e222547269a4fbff3fd7
Date: Tue, 03 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672706487
