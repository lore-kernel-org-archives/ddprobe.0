Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE07363C60
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785622834; cv=none; b=BFj0/HgEFRtQ4jrew9ckF7/wmYPQPsN2oiKzJDyv3Rlfak/xlUt7Miw9GJZaD4UrbRioj2320rZXlT83G2Hj7FRTllSCqmL/YweVMPoSqVw89+GgAFXafMuzr99Rh8+dofkaIjtiMfUIQA5cDDIv8DS9jbRHiuQoktsiSGbgWgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785622834; c=relaxed/simple;
	bh=SeT7fIP0duEqOGmGzvXZsLXWuYyA+gYlECzR5pxJ0y0=;
	h=To:Subject:From:Message-Id:Date; b=RaRri0Z3391sSQoQR8HEmxQFSoNkCMZygAuzet7uH36IQyHGY4ydvfeQzag6GQEDc+s+eTNaSpPbU+TkuIQK4iQL0yyoEb03W1JkCRx6GI6d2SAa713cAiTv/iFoGEIuVxTPgvFP6GWxE413BtmaQdDdLIIQDXQ7HCVHxrzVtgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rh5lg8ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rh5lg8ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CE9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785622833;
	bh=SeT7fIP0duEqOGmGzvXZsLXWuYyA+gYlECzR5pxJ0y0=;
	h=To:Subject:From:Date:From;
	b=rh5lg8irfQlt06AHApLSYyr6O3NQWPbbyZlYnwrwidGmt+dQdTXGHpPYHD+ggWDLz
	 FNadc6vJqi0EvFvzQIPoIZfY70Qhp3b99yNsQZsoHWfq3zYfPX03iVQDeLVxW5Ymvu
	 K3N6BBqn8vQrkRgdWHd9E8ulOdyYu76oAAPnrcp1o1gJZ6L4JkyMTpW26m1H4/MVVf
	 uexdocLWLO1u1f/+XqBfyUT/k/9tTqIc35zV9ze9nrGu66SEIL86IwCZfZEztmnydJ
	 tDOkFI4gpyxCu5mHAYK4PpZjmZaDZ8AO4c8DGG8cq469C2kDvwJ/mSapke7Crg0RpP
	 I+LTCMWDlZ7gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7A6C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562283368.11024.7891857233192501437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7fabb0de5e826ebef7880e0a7ffadc49ceb856a126d00f24333bf6f3c41dc2
Date: Sat, 01 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785622833
