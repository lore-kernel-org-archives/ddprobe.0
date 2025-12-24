Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7EF1F9ECB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766600034; cv=none; b=OLP+LvOq6Lqe5YAH/GCMEzI/r/oSmJwbpdQzGxwNtQNjbz/bUkJUSy+hDko57JsWd/s+AJt6g3VcubXD/PS3q4hozp13u15qAqc5tqNukbyqMlIXjjKgE86+JHRNkCkUgV5itvm/TZwwZFfccjo/v5JAGCT64afKUTc32qb/Cng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766600034; c=relaxed/simple;
	bh=2s+cSM/pZlc/VUkEwp+NEppAD7mfbO7/6fv7GmFKgQg=;
	h=To:Subject:From:Message-Id:Date; b=dXK5BuBgE1shSkEbXiiKHb2C7SM29q4WOgPsioIUfe4/E5XV2RZZaxZKXRxkvx88Xf6/tm+Wd+r/KXNtsR7VDRZicM8eEVYpLCDS6a6Ll3A0e05mt1mtBtB5CbbQjnyJ3p1n7j7YMGZvhvnsm4opjs+KYqR/qQpX9wlGg2JS2hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOyystK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOyystK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AF9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766600033;
	bh=2s+cSM/pZlc/VUkEwp+NEppAD7mfbO7/6fv7GmFKgQg=;
	h=To:Subject:From:Date:From;
	b=DOyystK5AWFHq9N9TQj0KxCsi8mVU+HJ1PWKtL8xvOh0QnXWmyNpRF1mf3MGubLvR
	 ek+yNtWvly7eb8e2N592e+6r9QHu3zd9I1B1CpigMSewDLXNNaVF8L5/LcBc4xzZnH
	 Tqg9Deg63rl9zBT21hmtyvspEtsXWQ7mkdS9EbmYiaLRBu18UkUG1SwFHnY6nKJp6F
	 veA5S3OzOuYg8PnIXdZ2mtUGlp/4POSPbhueEV/0EN0i43MZ3cxeXTwurA19FVDKuF
	 9ChexEhTovAa4UaIMHDTnIrwp4M9dPNNiJbSIFMz9MTPJSyUzLzbUnxhYBZnuxL8t2
	 qv4aMCEPAG9pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C34E7544F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660003358.16525.13282199879144207124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2391c0499539631605be8328e525341296c020212d0de902a2d487bc57296b39
Date: Wed, 24 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766600033
