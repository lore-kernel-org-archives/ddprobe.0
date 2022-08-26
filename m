Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3BD3C37
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774F5C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661516452;
	bh=S4DQkkp8Sse3rJXxyYAs2YtkmCAoBtGMgDmto76Ayhs=;
	h=To:Subject:From:Date:From;
	b=UWffCFMVSI8mXPddEEx4ddhMujlIjW+T5u7mL0VQvYIHDYol8RUdUDCGiyj86kfm2
	 X78+BCUP+PVAhpvEiVRfOYhmV1sF/8F3a4LuGdWz6fyAB1jJoNbyIY135ybkCZBz1u
	 OfD18hwgBELbDLog839TIfoSU7XlDMVgZF0AYHerGEGdAbXaGLAeUf9909Foh8GTo+
	 MEubtgqm8+v+D3lyMh8hsibb9f+imPTJTJDD1Hpf3uf83vfFSwqstg7o8Rc1RbjBdn
	 vjbbW/4f0L+IQ6LYgDEtQUo7p6lW7kB1QuUroFk+ND7mY+Kah5m0LC1e9M3LVgV/XO
	 pyddfwrAq8NhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B196ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151645236.11667.6375392494929657874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c028786430f3a82e6b55d777bca55ba6b20901d82b746de6ad55ac6f55208de
Date: Fri, 26 Aug 2022 12:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661516452
