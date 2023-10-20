Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197C120F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blsfuJCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93AC8C433B9
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697773696;
	bh=HDycU5EPlQF2CgNYw/p/TwO0JmW/UGgIaHjegpXe/+E=;
	h=To:Subject:From:Date:From;
	b=blsfuJCXbob109YaM9AQR1BSzgEW5yFFRJDOudR+i+1FRAQvxOovAC4jaWcW+BK2c
	 b7HSX7B0i79q8sQ53cgCLxRzNVwGOwRJ1hOLWnvbdPRoU1QQIPR5+7WkwIC1XtCImI
	 PVhViI4Zf0zCvSirY8kibC7/AORDvbHAQToRIyPDU5eD9LY+8KCNWW95Op6FUSSalC
	 epEMnij2/G8vzhcBpUdGNuwtJvHQs2rQV1KKhLNz/eOcgxviALhWNgDkTKqnSsAgpP
	 wlv7tD8N7PWPF9JYRIVIRBhR0mLd/P06n+58ZhUiabsM+hmh+eR0qqA60dShyudKGN
	 GCys977559t0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D566CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169777369643.28849.3313720600152462648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45da1f6b04b4282d4405305ae8b8bc76456c3a94fad94369145dd2d8125a969a
Date: Fri, 20 Oct 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697773696
