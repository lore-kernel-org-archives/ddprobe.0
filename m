Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C07D517
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752869394; cv=none; b=YaXYJ6wykEcyxy+Ey8DA7O/8ovaVsPd1wzCb7vAB0/NqGUKC21q6ul+rPoBdxob+aIIvmh6EIzASJ9NC/RACclLSYNsTsiSsOkKvZfIFp7AwwbWoBmmGD8UUEC3C6yngVanJ8Sk4eeFYHLdx/A15X1JodRHdqsLol0zOuwNkACc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752869394; c=relaxed/simple;
	bh=eQZ1m3FenZzzVH3Q4xTaAOQBZ8nPLlLrXAP7gLF1nrE=;
	h=To:Subject:From:Message-Id:Date; b=WdjetVmibFm11kL+3k+F5lXeD6IWwThM4XMsPwN4U2InIUyTXgpZrKqH9+sOe+x3WmPF4R2UoC5X/uD3AnnQ21CtFCssGRNGVjx0zb2lH2yIh756D9+PwPOcpXXFdyL/f5TrnLIoO7HqHhvGoi6BPPJHvqorFAvf10KwvbM81kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YV+F007p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YV+F007p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0533C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752869393;
	bh=eQZ1m3FenZzzVH3Q4xTaAOQBZ8nPLlLrXAP7gLF1nrE=;
	h=To:Subject:From:Date:From;
	b=YV+F007pf1dVD+3+fR7IZtuiCZpzvzfw8CkC0SshhK9XINj8UEJew5rL/VcQeg/PJ
	 dn394IX8eYtk2YSit13r0+BWGpD/paun8x4dYApS8PYoUZLxDgnt3Yvqz8xY6sVMb/
	 YNO511ICRHJg4ghRfBCSeMt3Pn6Ps8u/ONT7I7P0bZw4PJu3rKqn+vUK3Z2pycb3t6
	 0QyKAHnQ9cnT07D9n+nxB/lX/FiG1o6FtnmqyBJH4JfV4n0i76stq4jCQdtCEgZHR0
	 gZjUeDxH32uPtz7TcUMqNnd/xseKmbU0HnxyI2bKpctcURa10Nu5lk3qRi1gbJW236
	 xJqGMYMypU3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90196C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286939358.32222.14393953959694182259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32b0ab1d6956c5c2ee059b6f840d400fb3c3b235e5fb8d1d912155d1fd3555b
Date: Fri, 18 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752869393
