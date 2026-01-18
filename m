Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AE919309C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768733634; cv=none; b=QWrC7sXDIOuaa5+l8XBSARG5vykuvF6nXzGeLTKCJZmCeFoSd36wiL1m9dRhAfiZ0p/Tzhs6uG+Kmhd2Zvbo/gWkEWMDoQIBnuOs/MeRqUcwjbWFd+HevHUkUxFPS/sgjxnxwweSmkXZ5r9fYBh6AgkffKkRubVenEdn0Edjf0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768733634; c=relaxed/simple;
	bh=+nTfzbjIjk20NL6xMSXWc4Ppr9qxk5CXr+Mwu+olKYY=;
	h=To:Subject:From:Message-Id:Date; b=Decffy9ubrH2C6QDkM/eUp9kypelihC84Vzx99EUN5BA2NKqOkvMAas4tFoIf3QoLRxdala6JMDkmSapTfYGu9fxZwi9O3ijGJE9Esl2PdWW0RnfaCtynv08fDjueJtHCyBlSL/5KId3gDQF4qbbbdehoSbm/rglFDaFCADGBYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMUVvWe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMUVvWe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B26C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768733633;
	bh=+nTfzbjIjk20NL6xMSXWc4Ppr9qxk5CXr+Mwu+olKYY=;
	h=To:Subject:From:Date:From;
	b=aMUVvWe1lY4TAbXTVtxdEadzOzqO5iFzpWFs5w7W8ITmxTfhNtj7PLmgYBuitkcqO
	 nRtCV6Ehz4Hqhp+xgvEIzlBVqvLyYE+f8S831Pa8HanlJpMKF3xqvcc8snAI9cXkNS
	 5mWZ6hfT2+ZsdE0DcCdqHF0mOgFXzHUREzHaSkprM5D9NqAnD6KUtVGOs3s15Th59h
	 fOdQVmwu6LqV1bslZDUuOenclJvt6C3wEFRqJxY5xRv3EL4B7OXxmInNp67F3Oem5G
	 t7piwEJCBLpDHtM0DUZCUtaUk9ssstrwiRrQmYvzKoaBnPd5yN5+fiS7ufhie78Cky
	 Iqr7BLIlRFjQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD0D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873363357.7169.3044597052648511155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2723466338496395e4bc074ebcefcc3e890287be4ac5ee2011f22ea22ed03d2b
Date: Sun, 18 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768733633
