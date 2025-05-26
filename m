Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329992566
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748303996; cv=none; b=m4yU7OCtUVA6ec2v1N/7mZfORIt3ZJNVXMsRGWS7rRXih1p48CaRqIbAdWbHNTj7gIeweNUH3GrBiCoIooiSDWB8KdvOoVZtSF/O4g8EAjMPAHU0EcR0WxSyIbRxjdfkzIglJZI6ppQJY3mjw36XyVAE9fdWn7Ghp3AuYtJBwL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748303996; c=relaxed/simple;
	bh=9W5OKza5Llg2j+uNrYzVTM5xNdsFy2tDiTaLdJuRaIA=;
	h=To:Subject:From:Message-Id:Date; b=OWoY6/3Shg28qJf1w+ZJfUslGwT/YERka+WZ+9lAB8eWe2UfEBb55zriizUv7qtkYCERn6khePBTkKKx1e8/v2Cfort3jDH7H87XzbQUaHQ3r7FKX3PMAPZOAzmHXQkfRDqZDdsnylTRMOqCqeIx5sM7WqUZ13x/JSanZwM7An4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnqTcI47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnqTcI47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57D8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748303993;
	bh=9W5OKza5Llg2j+uNrYzVTM5xNdsFy2tDiTaLdJuRaIA=;
	h=To:Subject:From:Date:From;
	b=AnqTcI47zG4h+qn2nCpSjXxE689tLT4g33T3lymz5Okzvke68nVcWrDEmwD+WjuQF
	 6moIrKCKiW572yZCBLRUh0zQ8eCMIJcxWr31oVcMsc/nBZt6xxwUo0aHQ6U5aXX3xi
	 4y7IBlxnw5rV70+gX1QjmvFqNe/o0nf+QOZiRkU5qf8bg6c+ZXSPADEuOQrrpFJoGa
	 R9ad4YV8/5iXz9Ws6z9OyZRFdjHYrnlNPC0lI2pyrhPIDeGPMNhxTeuN3KCCb+3d+X
	 owLwUqNwpAqhNx7y3oUpkXF6ywPvLxIfZViAZiaEnx/vQq2Q1nJnDHkD82RZZMKSJo
	 osRQMjF6EV/Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE3C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830399358.15249.8264361750236542700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c83fb0c43fa15baa067df2e144fbc1f3c3f122cbaae1570741255d813634daf
Date: Mon, 26 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748303993
