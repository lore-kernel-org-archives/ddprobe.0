Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250D21AC44D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733312754; cv=none; b=RuwRBHLRft843vdHe4S7caLyXdQ76rdkryCyMNJKcMT4+uq6tlJf0WZVPPEDdCbmRS8aK/atyFT4j7k0Icx8aKPMeTGFxKCWNSSAyNDg1AGUwZbTFXC+TCCHHRMENG05oXj4MfRw6M547MMmBYDeC9ELTxIzo8Aev8IvZfCWbYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733312754; c=relaxed/simple;
	bh=ThQ1GdV/UA3W+/OCZmOKe2Ze1crYZ0Y6ujCB2mH6ZNc=;
	h=To:Subject:From:Message-Id:Date; b=eFl2HR0B7/hpd4qiXdMGCSMr5d2fVxNs23bOl6zNUPcDEGOjItLQ9DSwvJuo5kEdCgG744Z8VrBO3KY0braRRmNijnuhcMURQlCnqQouVlNPhi8bJ5cXWlrW88Zgy37c63IwAfJ3RBniYkBYw3vZAQhbNNQoyf0es6Fes3J0IqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBd5x6v5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBd5x6v5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F21C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733312753;
	bh=ThQ1GdV/UA3W+/OCZmOKe2Ze1crYZ0Y6ujCB2mH6ZNc=;
	h=To:Subject:From:Date:From;
	b=jBd5x6v5TmZCXVC4F/5AzK1R3cmNhNSYMq1fTDFpEzstsp5LsZ/gVs/C+xr9zzyJx
	 0oXrT9JbR3p4evDuvUaLgFLmxQDPZ+3TEK+kprAW266stMrDyIXk2E2G4YvKcRg7um
	 oCw4ebwmWpmo9U0QW7J6UiWFnr7U5zkhCvjjIHHDONSIxK3NIQCrH+HFmSKBpKfvp5
	 mZOIqugRPVUS+NAhNW+IA0L1/CouCgBTYtmSNMIV8qHYhz2ecEfCisl58fGbMUf5u6
	 tGceMM7fmYAUK/L7rx4lNpoEEGP31j4+EOBPYTjNCj6vhO+je4FbadzcDQN0YlBrYW
	 3NjzOzSpb8EEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928ADE7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173331275359.17968.17372722588095753920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748da9aa82bf43ac0cf624d46661fefa1d71749aab4836a8a920798aac79fd30
Date: Wed, 04 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733312753
