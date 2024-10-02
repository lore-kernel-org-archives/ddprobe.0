Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545198F40
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727907954; cv=none; b=Teg91EuTf1/A2KnXa7hmue/nsBp4bha6VGyLuf900zTy63pWfmkyCLdmYouxK1kP2RtoyoB/OL6m6k1knmZsmJ6grq8L4A3upC2i1DAjG6KVclM/Kc38k6F13eYxLKRboXqMgRkoiHIbwvcNd3y9u6bk/XkLpFfpE6TQQJodcDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727907954; c=relaxed/simple;
	bh=LuZFz32s5EYsjFbeqvIZqKPPm6CnIU1LQFMQvKPmfYI=;
	h=To:Subject:From:Message-Id:Date; b=RBgPVScCTOCT1vqOHy/moI8ats61VhhWCHEiWeQPieGEqU2CN0IfJq7dqg81A7rh5mdczcjZCXEbg9VXbYPQKe6RETEf5fVBsf9IvLmggrfycQdGEovXsrFRCJaepYibKYPIQEQa96Wru4bMq5HbDbCwAPH9HmYmgKGGVS/kp5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHpNrq64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHpNrq64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8201C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727907953;
	bh=LuZFz32s5EYsjFbeqvIZqKPPm6CnIU1LQFMQvKPmfYI=;
	h=To:Subject:From:Date:From;
	b=WHpNrq64b7NwFHUpuLckedTxjs3E/N8M1uFuKqvVQhsLmoKmSnYmVdtw84XXL71TL
	 iCe44xk5N83/dIsiN8w+3erQNoRs8NHhwG+b6gJZm4sZfT6gw7nQ3vUb20uZH/1TOO
	 fyQkgnDHbCjceVN5dOsnBIJPJh9/Bvm5mWYkTcgiDRq2gtog8JbcbtcQRhw0e/8ox1
	 Lr5sqRcDwazNLqZOW0EsTeYnNtGyh0DZB2W3Uq+eHwgMSNZCTeB0k+BGmBxQYif0Wj
	 kl2Hmlvmhockvg5TyYBbwTi8Ya3CgXF8zMk3Kki3rr2FZ0UWHUqLplCLSuhBH/pwx1
	 9DFBvszrUr4BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF14CF8545
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790795368.21002.18329659186029115845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7295600a5e7421498718502fae692a0bc68b0587bcad57641a3b74085cea518
Date: Wed, 02 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727907953
