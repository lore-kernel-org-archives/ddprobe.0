Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4162A28F3
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 16:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB369C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 16:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680626825;
	bh=33pCE+Vhycfeg3oVh2wSpbYaUcnyX3T49/lUp+FSROw=;
	h=To:Subject:From:Date:From;
	b=Poq3gj4KJI/qjpHzJPY5Y1fDlz0axwiaE6qDNgKumdSP2GzAdcWGRJiyVeRAYBg/O
	 cXC05Gm57aaduQXWCgUOSEchy1P62cPBUZV4LnFYhnWBSoj4/3cYs+JJND+omVbgeo
	 HOlKzcOrhbWE+aHoLqyeVvbHp+Ew1Zz/3iiSHBjdsvMaKUE+nrX5Aup2OYebtJ1Ele
	 7a07IxqknChPIDuJq0WokVzoFloAMR74cLq5wLBsdc6lTfrGyY1yW7r6iwaLip3aCr
	 NIA8j/q0ljACKIBBGJ2qnnEfRcyufAVAImNJQZaYL+4OE1RfvPZJKL16ux4FNIVMNE
	 CgbECVhWONnsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAB3C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 16:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168062682577.1833.10097138035584205465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8997049cd9b153d15199a550ce4c28d60906cd1c97ca39405dd28c91ee500307
Date: Tue, 04 Apr 2023 16:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680626825
