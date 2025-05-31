Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FD213790B
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748720394; cv=none; b=PL8l/Fjd9OmOD+hHbNUrH30tbrHt91JwSFxSGIZf40PZMtlQRj0KsFbH+xLkFQnwvmHljq2svMyqD1M3EsqQL/7uqcltwxEl90Frdso4TqJzeLIHYV2rto3O6dMruW9YG8coRjuRVhIefEPXBn12k9QqAGMKPQjPfV644TCNcV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748720394; c=relaxed/simple;
	bh=7U78nxa2DUtFto1VB9hshRQIyHBQZ+CaICQ7bL2Qiig=;
	h=To:Subject:From:Message-Id:Date; b=kowTbqClRdfdS+Z6e0JfSQZeELQFX/b6md7c6R7a15gaQ4phr/R3o+2CNwDml3hnMj3C+SXDagvY6uGY0uYMRVI4A7tZG4/tfBgVD89E8A1IupKkaVMila/zRs5xE8BzmuSqM6vT2Ahh5VAfqBJxOzR2wZQvwkj69lRkjFHicNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIV3ofG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIV3ofG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AD5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748720393;
	bh=7U78nxa2DUtFto1VB9hshRQIyHBQZ+CaICQ7bL2Qiig=;
	h=To:Subject:From:Date:From;
	b=lIV3ofG6wFOjcMSP3m9xwIIISZwLmlm6e3EWLnDYkw1V5sdn8SkXw/c6s0YAMtQia
	 k+LIrXBx/dw/WmFpa4VaXWlQPqRQYlbC0gXzCb5c2j8HmxL1JsN85jn/Qtxxao0sBd
	 +wIrWM26927Kl3nYNVnU+Y/BmVcg1VPB9XezRDLXZHjxePqTVdt6geEMkqXq2GosRA
	 9DuRT6EjDIe3Ip9mwfQyRt/vTck3C1aBEJzZVWwT98AV3+S8xySN4FSS6cVRS8EMQB
	 /o5rBgpwxEwPRkxikA31b9reNHdNbtF/yDQ3s3Cutm8KTTSsH6dqDex37a2LJeILpC
	 HgbQgL5euCOlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94022C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872039357.12061.7805908109900142042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b90968b47e157c59061ef223b33ed5f439675790ddc9a61e304c341cbd49c02
Date: Sat, 31 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748720393
