Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C843EBF0E
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770540834; cv=none; b=bIAUM1qRVjAc/Ueiavb0JMMQ45OujSdzNRk7PVAjfMPjodIYy2r54KtGbgI1xZjW/BxPIGTWSsRyhCGP888Nr4jsqlgty3oA4atKcDfLbzoUaV9Y1zy2X4vbPKbcR32o/J87FQHIgAT9vlPGBNgwedeJdzLCLHAkMEPyrV9zfxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770540834; c=relaxed/simple;
	bh=0Bfli7dW6DAU/9usYt2cJuAeaHpNAnaqj2o0cJIZ/78=;
	h=To:Subject:From:Message-Id:Date; b=S3ISZfDnQmxIFFaLxDPN7dCy3A2Lkbl2Xbq05DcRxx/ZYpGUI9Rv122iah2EAi+IqjXFl+RZdPX4uJcjy5r9GPxAQ/mGRKXUMEayGsOapl4HciqtUzWavit0XEfwSNeXoTxgpeN0aqp2iwJRlKHr8Bwr+0UN8BO7X8/mSrKI3Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA0/VhJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA0/VhJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAABC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770540833;
	bh=0Bfli7dW6DAU/9usYt2cJuAeaHpNAnaqj2o0cJIZ/78=;
	h=To:Subject:From:Date:From;
	b=UA0/VhJ+yH71pBjx5irYI5Xm+2+Z0zZSTI+dtnR14OaYncNhaukBHOmDt/SaeOUX9
	 yuHW3DxBYhBurmiOY+7dIW0akjbQaH5TZJ6anh5KziwNXlktA8hCMZIV3j0qJbuh1p
	 0BQxDjgHcTpx29xb1ZYTh+NTxlZY5EIsnjt7BgAJbUd1MvYdzbqvMl8QJsxA+q50ne
	 xAQdyDmDWkXm/UTZNeRtSi0peO2KnwHMK0tFwCPx6gWiipawyHg3HK8rPpLVVwEyYf
	 xmmxwoJ3nN5XDfnYzajMkI2HPP+ufPVI1wPPVgWQO9hSsXGv4YOQHKMBJz/xbVDhTN
	 TrRhWaeQgF0EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB36AEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054083365.10550.4997621617935470875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf002acdf0037f3b541b113505645d03b21171b8a323b34fa17ae45e9a5b0104
Date: Sun, 08 Feb 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770540833
