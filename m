Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519602F84F
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785041434; cv=none; b=Dbrc1hGw5Yh/ItcRNJtYLAlqVuID+qGnqI0e9Ggvjn4OIsB3d2vAv4LhZTaMDeFWgDFkdEDetFtfX1EeQ2lC6qVKcXDU8FqVG9p4KWVka1JmG/oiBx4+PsqT+cg1BNJsKzImNJEELtovYBhGfEEqDPkM9NMiHlUc25A0Xm/eQdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785041434; c=relaxed/simple;
	bh=FtWqfMGfEajvkcX3rqc/h7DFD3vhuUyqywTQhu9Qsvo=;
	h=To:Subject:From:Message-Id:Date; b=Z6bcf3Z9QAOh9fCninMrx1XvStyGN0NNOyM1T8IJ+zQUY4PU3gYAkoHKuxWyQNyGl6kFD4V8eUvDiuqHua01b5xaqxHwlcQfR9MyotEk/QiAc2MDMLH78KZjTT6E57njzJT6WG3zTLrDHTiYhna60974cqd76IlSAJKaE4rzE34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQol97RB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQol97RB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1A9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785041433;
	bh=FtWqfMGfEajvkcX3rqc/h7DFD3vhuUyqywTQhu9Qsvo=;
	h=To:Subject:From:Date:From;
	b=cQol97RB9Yt9amNWZR5MtFrLETlxERxGF/HmT3mhyKX8E+KxDUFgHaxrMALLvod89
	 r9vxJztHUG2fPUfuMyfdhSpRIn9SSyNREicQtPj23ZfcBgp2/aV98Em5FYYU26AOsu
	 9gTPnbr6bZbIjjeNjSfLwROqrwIpRGXq5nb4lyRQDwWKZw6uMvbOB+TGq9Pv4zItuJ
	 UWukKnreWUs/gocoC2hB7LQxw3NPCeTOJoXknp2qeL/E0Vs7gKVxX5SKmBeSyHs4Nj
	 dmmh2r7eXSCbVjuAj2SJQbqIO0K0NOKR0thcKY6mGk11cDmn6xz3ZSF3Em9OFKOEJp
	 GNZTWnGMPLV4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD321C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504143367.28558.10574698211697111417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd379410beb996b244dcbc26ff23767327ddce9c404a0f53445c16d5667e2dca
Date: Sun, 26 Jul 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785041433
