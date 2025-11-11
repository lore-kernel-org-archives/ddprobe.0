Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78201C6FEC
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762904993; cv=none; b=bj8BzVSuFgCTklsdxkrLO1zX1iNidk5zPlqq0S4KkXjXHRWfcM1t4dNOHGnBzxLqTcHe86htP2NbpX2SMEx8YjZ0lN8ObxBO4AnumFxT7p6H8WgU0qGMbVvyfFYypbnjOhD2YNfLZ4taj1hkx1leUyBGl/0OvZuvZnsEWXX5gY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762904993; c=relaxed/simple;
	bh=KU+SoloMtdL04KAe8hx4F9UmjddikJZJjCczvEcD60g=;
	h=To:Subject:From:Message-Id:Date; b=LroCAqfujaFiJuQrtSbJUf57hYvnuZbL05GtL/t4KG9xG+cxQO3ibTOtiv7/fjijtgkqQXwCXEyED4viZGjrLrtCMUiO66tBPZ+euPpGuNwiYj5k+z2M0hpTd0f2xVDp8aw48b12/yR/DnUdobtlLwq+X9UkY/yjXbZO2sEZ9t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjBM0syj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjBM0syj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAD8C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762904993;
	bh=KU+SoloMtdL04KAe8hx4F9UmjddikJZJjCczvEcD60g=;
	h=To:Subject:From:Date:From;
	b=mjBM0syj2HIz3gLGOoplVxRfti39E2Vka+d+sHGYQ6leq3quK81ZstAdU1Gi9oaX8
	 QrjEzVGpBiXaJuDw5HJ3P0DayrMUksnk7nyWPage0fSA6wjtBjoU71Lj4PoGTvV7rt
	 1PoYAnUBoet5kZUE6PMktdxAbM/AQXg/TAC/BwZycoL7tqAUwMnwd9Hn5rjxyL39bZ
	 Ni3CGWjU5fnO/Qe551xcJh/vWnW+c0MpYtWEmJPZZ8oWV8OnPJp+CGRGvTHWRVNN2/
	 JXV14GWuuiv2OZNMmsMWyWS5u4QuHx0FDvCGrUL9sefAE3YOJAi1U0Itq0tGFrb6h/
	 XyKmMLHOqE1sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2DCCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290499358.24840.16364688464764700461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf7ae335808cfc07cfcf8fb27d016c97eb0716493441b5e26332d617859c539
Date: Tue, 11 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762904993
