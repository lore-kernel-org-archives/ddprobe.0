Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1F31C27
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A4AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670815887;
	bh=oh3rkwZz04mLroIJqLmPrPwreWCbTwhuVR74H/pDpzI=;
	h=To:Subject:From:Date:From;
	b=myxlt1YJx4P/eUFavBuUq15K3oF2jXuahtXJEvabnr8/R+mG5TvSIajjQasTafC2j
	 spk1+Fxr75mNuvdg5f+EIN4bJpMHI6wPqxLtMpUEpZYumLdn7IuT0o9E0cTaB5HrPC
	 F9gzacWBxRXXsFDSIe8aJPd0Arx45MBkxz3uvb6sdfYW/uE4C8n8s+qF8FuvCAok1v
	 ruRkQyZvlOdDS97FrfbKJCVeaqIjcro89D+pfyQ1wre6ULxm/H4GxdJpa/qVFSudhR
	 s+EUMRm28wMhpAIlACE9ZbuxZUvnUCZRbCmxPl8/BiDV3DSMHxq25RI0w6BO0Y4Yh4
	 SOmkLG+VYlSdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED3CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081588738.28099.7834294034304824254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de437e010bb636baa931ecd94c37b018c70b9bb939a193c736af28c3320c2010
Date: Mon, 12 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670815887
