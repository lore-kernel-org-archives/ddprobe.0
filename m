Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0382F84B
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mW0+h3QI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB8CC433CC
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702490296;
	bh=qTKZ9QqtoZPEkzBMWMRnHtcMG/Z6VfOS57X3agpe6aA=;
	h=To:Subject:From:Date:From;
	b=mW0+h3QI+tHzKkE7q0hCldLbmrZnHeZBxigwPl9sPix86TuEjdicmJai3WC30gNo6
	 MHDVTQmN3jY82gQsj/3o+xHi+T9BtK/hCf/iHvhQ3DvvR1ZPpx4+844llwXVrrsAh4
	 tc48K7GdNqvs2KGY3fLGOSi6LClq91nsXLCWxcBwvdjjpyJLKQUKIUFroDqHSOnW+2
	 uaYBszFt6Teta31dtgH110ZRTxOAoirObPsN+TrsSmBIOMitmAMvj5+O80jnmf+kYR
	 MxFcaOnObL1l/iSaY1m1eV0gHkFA/xfSVIPuxNVk09wSeFZDOxQJGeq7l6PJmq+Npo
	 g7V4d77DXnQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6614EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170249029641.31195.6840753898235429597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd62664afc2ae086ba179165d3792e3101003ee12e234e1541c22af7b6c8de1c
Date: Wed, 13 Dec 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702490296
