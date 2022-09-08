Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27717C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 655FEC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662625253;
	bh=aNreaksJtAYaPosxuT7TiW56+xGvTIvXnupwaCQ4VsQ=;
	h=To:Subject:From:Date:From;
	b=jKVuGEi2T2X8s9SXwbiEFbWMdgclJPbI42IVTAamgi3Da5PzTD0yfIQrAbbDpAAxv
	 E3MW/HRbf622uIKRlaufSz7oTr3pxaGVkUarzH5+KpqYMuaZD4RqWXD8/csD9qFw3q
	 UwHayGao4IQTKYuXa7lAXAtuGlTRxL5BdAIQGBe5ysSioO0XtlIrcgekUu9L+3yWjd
	 nhFzOOkSPwO7IVKM3t0R7ctYrqZZWuugIo30RQjrjXrauq2ewR7WHM+tbnzpy+6tQe
	 6k6Ufu7MC7OnS267VtI64HO7Uuc79rrNv8ju7YUKIK1Zy4fywepkuTAkMq0zWfHts1
	 6BrT8Peh0zCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDA5C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262525331.12572.6154048016084437798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8e944fae32c45a9cf132cd8d869f3cf3e43ad8b399a4a2e1e93234a09dae80
Date: Thu, 08 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662625253
