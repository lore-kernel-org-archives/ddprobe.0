Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E9F3BBA05
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768896834; cv=none; b=E/mBEKOneOE7YcVLOSVyaQ/0ZdozfKWp2VOv6uXpswMsrXu4HlC1Ku/yZVRxCIOP2kw+sqynh76NJtsnpR64TK6HUSMwqUTG4MxXtoJ7eX1SGrdTvm6xYcPPp8XG9Jzf1pWnydp56HzUcwM/iEDEKGIOwqu6l/XI3Tw8jgm6tbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768896834; c=relaxed/simple;
	bh=drS1c7qJH+tuMSNIrRogD3LfbjJEsUoMB4VDlJVQ+gw=;
	h=To:Subject:From:Message-Id:Date; b=KnQ9uqJlzHUP2FPh7WBbCu5bCFsl/54t9LUn6RVWs1IIpsfe249juNbkBZwCur6t5G/qde9VmJug1tlrkIpvjfgwolcLE40CdSl23lSjQNFqvZIw6oW/KXJ+5uuwpzhRlLv+TWsu1Ki7PlmHF9CH19TKTT8eUH06g27FuYIihqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4+yEcGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4+yEcGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF68C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768896833;
	bh=drS1c7qJH+tuMSNIrRogD3LfbjJEsUoMB4VDlJVQ+gw=;
	h=To:Subject:From:Date:From;
	b=C4+yEcGRaUpr6evRDwg+qiNvXJ4X52acMnoxRh0f+Hk3ozlYwXfgskT3OQkDap6sL
	 Nb29dWNz+NTFNQKvD/0FCnZlU2uI5+KJ1F4sfiDPNDx4IGY2zUTgNrJTKCNN7soeO0
	 3z6pgLS9DE/SDXI2R4Fn0t8E7D2oVB327twZyWoZmso8bqC+CT0webJqPcby/1yVMi
	 sNaYJZ2DDngQyrb3pQMkzj6XQ5TpCu+d+AdTFkr57uLpYllrpZpW+ebJcT1e0Aqlk1
	 yLFUtjd0iiN2bPDjTTZzYZpotnZXCHTnOykTc51OuFyT1MbCXnUJJef8LCMj/o/gj5
	 eLnIISeyep/VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EE8D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889683360.444.4255392399701236235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c291a600fed897d037ab93b45f82356ea4453d25fcce429ec6993629c1b76337
Date: Tue, 20 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768896833
