Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E060B29E114
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771370693; cv=none; b=rhE+zW62lJqAaSvdAdGrPL+C1ulF2d/oX9QyU/uJn9A8HqG+EdRH/MrqW0enwezEd6ulySsPZI+0yMnWSdr9ltHtxu4Gk+b66KU7mqn+Tn038Ocgn6QVpRrPYleGEbqwnFeFY0eFGkrsOkWD7qWh5HymJ+gm78nA3pEJlampd6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771370693; c=relaxed/simple;
	bh=mZbNrn3mQzWqBLJdtQ79urpXI8jLHnudy3g7Gowo0Ts=;
	h=To:Subject:From:Message-Id:Date; b=Y16ky1I9M2LjVcgenynlJ2jstsllwTcGUuPDwN/pjaEAXGELn+mJZ3sfsvG7lO8F4RlTg0mYF2c1jNAjCVzcCBcnAaCIAOrfvhxFiJdfEbsNbcR4/PT9HnBS0mMls5IwwsDdXEgDDb9w0Kx8ZlElUybo4ukTSJ6Sb4yEqRX6wyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBNDZX/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBNDZX/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA011C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771370693;
	bh=mZbNrn3mQzWqBLJdtQ79urpXI8jLHnudy3g7Gowo0Ts=;
	h=To:Subject:From:Date:From;
	b=nBNDZX/TQmyOOF3buCV+kGkCUoGQGelap+v9nriBn4TXFGLTdJTneyGh6TWsvlrP4
	 gnxoSjWtmI3tMZ6si09nRN4QrLjrnMXy65F19rDj2bLotILnds9eIW+4q2/iAmmlTk
	 xvMdmG04hBkxp0cJdYFoaoKcYe/aW+0NaJJLq1WTZxjzwx7g7CO+xF9TdgQqyOhJvz
	 NrSTKOopF7MtI4qUhQdpMWcwWAY30j0Y/rc4Z1XvinWvl34XvUkAyWvFOQwGIqR4m2
	 9n9m0m+o9iqg4J9osX99n2MxKL+11slgumaesjBs1u6TxGeqcCXuXcFUdCkwYVZOqf
	 tj2czdIllSWTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DC6E9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137069364.21657.6713245578115288445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34627d3f46cd4aa965424ae6c21e28b06b2fb43514d17917d202db055022c83
Date: Tue, 17 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771370693
