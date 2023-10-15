Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5665111CB9
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 21:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BH/fAZ3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8D8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697405228;
	bh=JQIp5HkYTjql+IIIPfo4b3r1/xYC3ZocJ/T8/0YVZK4=;
	h=To:Subject:From:Date:From;
	b=BH/fAZ3PZO8g/cw+HIS6MTUE2qIzr4ovWJNIbV3RkYjd3NNvwrl0yqBBDFrPn1ttJ
	 k0S9ado11F07ujtbs/FP2amiBSSBL4uWllc2nSrgEdRIBhYiR21yFuL3G3ZVoayLhM
	 xvSbhkRsN8LbWidaqHVkhDq7puzEVzqnupfKWheRwbbQz4d/0oCP5UZ2Q+F3ha5Osd
	 2gdNEnqicXOO0XcTaN8BwK4YZdGSJ8ypMJ69yUaXrgSaobm91M2B4DDLo2pTFlDxyD
	 AtIcdxj3hOMF2DP1CKQbtQkHHQUW3pkRGjCQe1SV6wLPW86Xfa+p/zY9+EeQBndnMD
	 NbKuAuC6JZi9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3828CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 21:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169740522871.23550.13830605506111568705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c938ab4de5f808e7e3682973e4ff691eae902dbd4d30e14e975bb5c8e03cbc1
Date: Sun, 15 Oct 2023 21:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697405228
