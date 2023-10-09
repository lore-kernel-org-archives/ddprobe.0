Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC839CA63
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 05:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anFWjX+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D308EC433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 05:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696831028;
	bh=6/nu4BEv5kBgBWQsbAhO07viHXKwopzTeoxwrsAAqJ8=;
	h=To:Subject:From:Date:From;
	b=anFWjX+VxkuOl+PjaZ8piuL2qEEgkUTi0fTKFnIlOQFO2QjpHwMHkXCnNP0CIyBnE
	 T20vpJ82ihZDlayWRpY1Yg249z86ZACrb9IrcwHc7HfCie3aeXPmNfPgLc9xnG9oE0
	 cmYzmOx2kwTKFkd66DKmKJnRWFDBd65tReF98ZY2UT+DwIUm++KhswkHejqt1xyM/h
	 V1i3bvbI27BKUFelmCOIic4QoChV1pJ2Azm65kpp0XArPB6FUrpj/8kXuOQhbUwltD
	 oQ4qOV23iVljCypMOzG0TL4u0gNpM0zgntNdgzm/ccK8L8zayNr+UcKtuQpk/LRtT4
	 gAuGrxpW9+xzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43E7E95A8D
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 05:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169683102872.19417.11710176001903160700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09535bcd8d2bda074ac12d3645982121e13cf7ac1e19972ce18d73841996e33
Date: Mon, 09 Oct 2023 05:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696831028
