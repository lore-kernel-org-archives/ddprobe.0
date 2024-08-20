Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A66F1C68BA
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724192754; cv=none; b=jQCrCf4hbgdxlwKVDrd/j+MS2n0CU9Lx9NBBot6VIdMGGZzlEIow55DpkVgvXolIih2M8GYV0GoFi4Gg5Z1j+pwpK53i9GfWFzikmM3A4jkY+gsW26N2Rxt4XHd5fhaH8QIzJPgulPRgSJJWPdIAFsjY3eULORNt1nZEnYPY/mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724192754; c=relaxed/simple;
	bh=zOxNr2HDWFVDG63HyJSmPkkzTQAFCHB6xpT9ZFrGZ2A=;
	h=To:Subject:From:Message-Id:Date; b=DzHTvjwvDl2xUGNYL5+m3gWcO0lWsfnMHJ440BSbaQGmyPUKM8CghlV0eIJ5PgT+BQUhnrMJCXMtMctLz6rOa3avD8mDSWcuqhq/H6YBplkepI/vbZbc3ZCb4mAsOR5nHNB1izLBxiq39vSikEaE+NHsr6EIPcqh/iGCa7Uxwp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jejAEJbf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jejAEJbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD38C4AF1C
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724192753;
	bh=zOxNr2HDWFVDG63HyJSmPkkzTQAFCHB6xpT9ZFrGZ2A=;
	h=To:Subject:From:Date:From;
	b=jejAEJbfLDa+j+03MUFKK3L87yQghH+Sq5fSW2orkH4zpryEiNA7T/qPGZ8qfclFg
	 j2KDYO9GVM1csjLdM30DtXO6LrDIr/gVvA0i+dHhRvBMfBaN8C4gl3LHE3hieE+IvP
	 UzPXBbNK/UVXWTEMlKECPTBxcjpyPPyPnHExCysCm+rVYudyF2GDSjOaerEsLjuh2L
	 MWSxxxP0Po/1MgglzVru/t1XqzNMFRcgIuT3JBRuxdMcI2uApCAi6tcpI2JLSRBUe1
	 hHOqv05GkovpuNvJ6vQA0Tv08+k2iTy9oprMx+kmMKoRGZjnYN8MHQiayxH+r5AV1H
	 GlA/8vP6agwdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9551DC5320E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172419275359.27100.1458266821020298215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0de81b39c7bd704a0c91d66f149adfc05209997064b38914776e33a76f56d5a
Date: Tue, 20 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724192753
