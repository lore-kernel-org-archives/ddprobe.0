Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748352B5F2
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 23:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1KLeJx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA78BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 23:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697238428;
	bh=KDk7jUVFDhO4UJ9rW4FK/P6CvEV55Y2QbaguYzvs5ME=;
	h=To:Subject:From:Date:From;
	b=E1KLeJx7YO2uv+w+Rc+jdB6TyatRnLnFnZ9n9172gtbOSAREp6wwjmSTdFo/CFIaK
	 tA5/NMYAeKBTGWMzPk5VkdNmDy2PhPu3mrYNjOyduzoFHV6S059N9Puzgl2iVr5xBg
	 VlH1gBtHilf2V6Re3OnVaiowbUPAoZPRUhvgk53qPfHBAPDuIUDCQVV/XX/KmmvmfJ
	 9fVpixckEKS8r7YtAnrpMZpeySKGahCNl91R/qDde28FtzzoGyMzWeAPIKSkg9pUMp
	 YGuFO3bYvLvmsj9Jtgar4GTgpaawpJuCwIEO3F2gPyw3tZOBSsplP0+AoGGNgV7RUi
	 jr4tYB/vSLOEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B021FCDB482
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 23:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169723842871.15833.16250569122172806754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc5a9e33ddec47f5ad4647c44cc1ec68bc20760e36b2c11e5a8998402d3d141
Date: Fri, 13 Oct 2023 23:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697238428
