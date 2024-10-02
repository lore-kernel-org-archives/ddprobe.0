Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F08914A8B
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727845554; cv=none; b=BARWRCiKrDx9599mzXQm2edhYSZz1hpQSRTy5h40e3Eb7W6WsR+2/y+o6M8wXf37j8mwb585pr0TNYgoMuq0f8CwS5Lu2SLUa18iT1nq54s7t0XAQkNKUiBdvRuqfXyhAIbmR8c1zQ2hi1TeytE1vo+3yEle0L3PF7GnZNiTKxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727845554; c=relaxed/simple;
	bh=MXNEZWgApG5UvIYxOacYalruAlvLfM3F1h12dVeaNrg=;
	h=To:Subject:From:Message-Id:Date; b=k4f+2kJ8Tsj7rRXGc8faHgzkkzfEINM9Kt1bgz7I1yKIKQCvgwTKq5f8K+uVyaeXIYYC1x9s90W6UJ2h4CjMCslpF4ZZ8kRR+InJfM7T9fO2EkA0gv95sZ4C6B+IFBVOfd0DhvuAPvl1/Yhpc0vQhVlMYdh8WjtIlbPoeKwXIok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qd2xEtTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qd2xEtTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A9AC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727845553;
	bh=MXNEZWgApG5UvIYxOacYalruAlvLfM3F1h12dVeaNrg=;
	h=To:Subject:From:Date:From;
	b=qd2xEtTMwX0nNPBWDsVu2h3J8tTrQzIvFEwPPyMpWywdKNJRIznZFukcT2ipSIlpZ
	 hFEiWi3SNMP7PJTf77EmmDBfjZyHoSEM7kfgIOZrAeU/HV3YF4OsotseSmhnk+cB4X
	 OdhUGUUHWwaJjhdMp7Fgtx2Xjr+cUYFsm9rKxd8GY/Mx7pJMteJXgxQFEFYf4YzJ4X
	 l2UBV5nCst0IsRcNStqYLmMkUYVaHj4dTp2B5w4PMOkrHescBv0g3SMJKeaCL/KaXW
	 7d82WsCaHoIgoZhkOgPHhUMUqrcQtbYn76HSd52RIrE/+4WM98FzF8lorFislkkahf
	 SmJOy03KJARSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962DCCF3194
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784555359.1235.1050833350383664511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981d9777cead26085ee33f9764258f22688feee7fe60737431e83f174f956842
Date: Wed, 02 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727845553
