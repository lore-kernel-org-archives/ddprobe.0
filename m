Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E561A6838
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783655914; cv=none; b=gEaUfcEF2ZfyCcj4QWSDCLlpTkiKlrSkVrJ2oljc1fqGySveJaGx8YF3ifoQVwTG9PGnd1VW+vXXk1uEA1uHW7XlMnylaJ34Jt3V7Z8d1pX8T+CIlR27xc1olUfE5eEo6J0Bp9nkkBQ5sBrAAHW3g6fw34sQqm14b0ImswHJVPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783655914; c=relaxed/simple;
	bh=O/fBBwkTYGidEgPbg/yMODR9OCMdwExYPDGwEpvxZUo=;
	h=To:Subject:From:Message-Id:Date; b=LjpzxSDofnJnanHOjiuY+VJj+vOiyIAqCuJ7NtKcBuGYcbw0gXUwpvznoi2xE5kUOIWLtHhcFKLrLTxLi3IyoCLlvkY6Iddj51xekKfi0B1ttY3nqIJRkQIFrHf/GfXReq6ZV/oRDQ2wtD9Bln43SGN2CPioZoygnZ1byH5DgmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Id6IWM95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Id6IWM95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D651AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783655913;
	bh=O/fBBwkTYGidEgPbg/yMODR9OCMdwExYPDGwEpvxZUo=;
	h=To:Subject:From:Date:From;
	b=Id6IWM95vZo66oLcVrnSuPxtOYnCRwK95z3cpuVyGup4xuPRLpduUB1lKIhZRYN4n
	 gGEjc5XZbK1FRVffgW6RewhyuYW2ppC0ot+RbAALiZ9KCeapRsiLl6omR/Eke1Cpsg
	 u6BKOe6Fo9UOpOdtyvejnJA4s78pKn2jr4e5Crj5LeDe00PiUt2Df86PaSBrVQMHdd
	 jfKDVvC2xvN45tITuWRVYA4H3CmogjxwXTN5wAWMOFtKOB8krFr7O1Lfne+bMEh7dw
	 OP02pNuqAjuDTNrBtY+cHhjZ3tlI6rTa4PNIF1i/5af0jtgTog5iVJLwgZlpO4qtWK
	 H86L5N7mUKsqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC119C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365591368.7927.434092634100425344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210af33aaec5df92aed138e897d95a774b1fcea9a2661cbf644d17169481f76a
Date: Fri, 10 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783655913
