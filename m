Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DEA30DD31
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769379834; cv=none; b=av1BfWVT0wx8L5+f/3cElgxlWyckJvgPqeD3qyt6UGVsgecAcuJ0f0Fa3hc/N/AYjNJ8My6cJfxIijx7q0d3zMj3EupGLB2QIqgDGFdMrOahHGL5DPyS0tF2gXk7zrRBA/QHP71UW19BlvWF1wq+h7JBaoOSmskN/B8r82ucTnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769379834; c=relaxed/simple;
	bh=eMt2Vf67Qny+qCAh73k/uFT5peOSj3E57qQDqJeW0Xk=;
	h=To:Subject:From:Message-Id:Date; b=ulyOp3Dhz3C7zwLGaVF21InclBg26KM1PxIpAdFBA+ivqI4B3UJ3ogzzQr8+wm93KKZJ9Rg1pXgudkdB+5ow/aiM6X2RsxvUfkGXu1scheNo30yJptiEfSFPIQvJ06vifB8AqCIkJ7gsYiNeG837ra6Arj2U3BQRP/2AuHzLyv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfWG+9ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfWG+9ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40CAC19425
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769379833;
	bh=eMt2Vf67Qny+qCAh73k/uFT5peOSj3E57qQDqJeW0Xk=;
	h=To:Subject:From:Date:From;
	b=kfWG+9eajhhdEGEPD0zaPGS0Q6jTpYNInOja3uPf5V+doS/QGtrEbalHZGuGXZiJl
	 dqS55gedgGwm6nUsQdtgOFJeRQg9bzu2tFyjNu6Ehc4H/0tAYTuQP8Mr1QP+7EZyJ/
	 X1QuZqgWPo80R/cBEOzLID6RqERKMs1P+vFCj2UxAavQPKZp9rxTUECfHQJTNx/79Q
	 n9ZH/zmj3LK99LMQdGBPXOI2EBhi+44WXyU9MRh++qFxKRjypTCpIqZJ6+6gAghjwp
	 fZWRdmUfV6q/S6DtuQHQ9fGJzMl/tejQWUHtHbCEi/NLOzYyK/xyg/CL0KEQ6kk+pW
	 uFXt/3nXA5+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C39E63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937983357.18434.2075928260153101137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e90d1595baa8eb25341a16ad04942df10a48a3ad91cfc495bf5c68dfcc74da
Date: Sun, 25 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769379833
