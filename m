Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D03C248F69
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765829574; cv=none; b=LdXUZwfBp3rXi9nKfJYpy3T6NBlNxVF1jxQnPeTFXA33YSthUUyMaLNuyFdEQcXEIDkvKt0BHpO7kFR0zm6HU+Kw3eqFD5YO0Z8eNpwUT095b3hNri6KWrsMA1E+AkN9yldZAhbCfnn4SGU2KfU+wzN0O7ccaPqdXK4gXRJ/wM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765829574; c=relaxed/simple;
	bh=c3i2O8vbf2on4YKJvuwiKzzzihtqSp/E2mUZF6o9Zgo=;
	h=To:Subject:From:Message-Id:Date; b=Dwknp7TzSQ0/i8svtSlgE3qMXkwhaRrso/8X7N5LT9ukaoHYhrz1ke0gvwj+YIHMEyAubh818RyniRwsVTSAHwGb+m3XCbFvJ2UcwUvZBpOWogEIUvhdS8jTRrh/ETSCOc7XrNz6sWLC3BgPLHf4bpul4Ibwt+KO36yiG4ZS2pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFTxBx5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFTxBx5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A944BC116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765829573;
	bh=c3i2O8vbf2on4YKJvuwiKzzzihtqSp/E2mUZF6o9Zgo=;
	h=To:Subject:From:Date:From;
	b=TFTxBx5dCPEjcPdlms8bLuhd9EPHNDlyhQjIDfiLrS2AXkVqzP+i1fxsCnqJtSARh
	 wem8qLxCc0jRGXTmMddccQDICKT6hP7ZH4KBvoQwa16JJ3D/ZLTOPQ3wC08sGpeUTy
	 F3KER1IXlxKbVpKjRhN+YSvhPxK7sXwlHhnfj1Ws6VnADCkF7KMvEIAOcWOX+I9noj
	 jsGlRsypkT5O6i3KuncCzNCHpYCVvonz/9HWGAwWwMPGwM/85nhihQyelW9O52rqiC
	 hCbuH9oetn/KXGHuzwFNgPFQPFNL9+0WVG+PffenNYtAn+TE7zCUECJU4zWWJKFkBk
	 a49oFSnd6pP/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B3D5B868
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582957358.25211.2581442302479122920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa43f160f5fc296b3330b0612b750de240fe247afc85dba79d344ac4b559ffa6
Date: Mon, 15 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765829573
