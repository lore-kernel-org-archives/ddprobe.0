Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C93B277029
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776664654; cv=none; b=mATgkWigRZQ/IV002s/k7R2kyPnP+OZLeHpMlPeoSNyISCLofJ3Mnsfhn7Nb+LTCUqT2+sTQbpP1sMUJoGP3x8RX4GjmjglvJ5omy2gAaqjAayDZO+GY2WYXzWiyfFhCe9ZJM1CQakAEPhk1Zj+h0SRMwdP+lJ33dATxwrWSpAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776664654; c=relaxed/simple;
	bh=kU8Gn9/D7X93tZxcaaKRhKvzos4GmEZlM+Lj0U7Bk5g=;
	h=To:Subject:From:Message-Id:Date; b=hEq49kt/BMQnZHpppS8DMJl+V7EROnMPhDbOrrzhSEhVgXzcu6S73oT4+jxCjgVJRpLG1ZAzYZsR17zoTz0GRNzc3CQ/0Kxf4v1MnQGUFQk+3jeDvPvgseMqhsF89U9loZiJFJwa3BPTQreiA6BagkOcSLKZDbqbAb+u19qby5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkRicdYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkRicdYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DC0C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776664653;
	bh=kU8Gn9/D7X93tZxcaaKRhKvzos4GmEZlM+Lj0U7Bk5g=;
	h=To:Subject:From:Date:From;
	b=LkRicdYTSs2cn50/2jUmkDf8JYcVv9VWUTjNC52P3Bx7ZX2RYvHikelAV/riTnCBE
	 KTFubGOGemheKOogYFYLHFK2I4ISdlAL/pC69FwkGd1rfs47bH/KbJR9lrSYmsphD6
	 T9OyXKHj9CliTGDKBXsttLAEk+oT3kAqSFOn5sVZWB/1uMYs8h0qnP+z41cv3/VTbU
	 qNaawAYX3PW/kGLsdu8+GNhGnAlov7RgeOxO+l2jJhV4HJj4bgW6GLWO6vVZ2rbEiZ
	 K6V+YzgcyoyV96QXFoCQwLAOHIm/rlqw1HoSpaLLJoAb/4JdmwUEhI/JVLgt4Dk5sE
	 33hMjdRnlrBbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D3CF99C9C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666465368.18454.647427761612454630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d8330bfb5748c11aa503d8ca1220747d79a8259e8d27820fe1ca870ffd2314
Date: Mon, 20 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776664653
