Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5300F196
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 00:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB328C433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689036428;
	bh=C1/i+gYqfD/mkttx6Ti5U92gjFGw7DQn2/pVB1lyijY=;
	h=To:Subject:From:Date:From;
	b=VjmWuBuSXMu3uWc7tcO8swVF71Z55+FCKjdwYvHU6lbvFKrhNkloWeTllqiWOdBdg
	 clu0G+KI1BMiegCEvZFeeaq7s+6O90AurYRV2IC/gstsnIkI7Jo74/NwYivCtCTDpZ
	 5cMD7xHb5EeZDotRHoW8RzGtW2DrxaEcLje6RuIQ1IhGzHoJ2YyN+jV0pyvx/pt3bB
	 o/MIF34q6GjIxpIhNcaPSqbetKAPySPjNm+uY1Y881d7KWYFGHM3FoznYmCU0Ww9Ca
	 s2VNF6H3xtW3hkH6eoiFCTmaW3JHYWMdRkuYulf+UVAs/dXrC0TuiS3eghJEELMjrC
	 ZfdC9fPhzyQHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3EDEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168903642868.5646.17490875879305153155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd757f0d3032f7ac5ffdbe592b6d134f205a29e541a9753b8ebef81cafff0f8a
Date: Tue, 11 Jul 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689036428
