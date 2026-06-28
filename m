Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555F518AFE
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782644314; cv=none; b=dL718CYy8D2/4Pb9ZEDGkfwugeXjpBGs7nlDN6FUWRAywTGJHEjUkzbnuXzWfFjBVWahI344dA19Y5bVqkSn+DKeCLC2FF6OwS+QW+pnKt8pWX/hjZgIZ49+AXNYaAA1XwkbFPbtDHdpPUkQcFYJ9xq7YNOV6XXIvHUXjx1WV7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782644314; c=relaxed/simple;
	bh=EBVxvmwftLWBicT76qsWLiel12km4CO5buxAszXzLHE=;
	h=To:Subject:From:Message-Id:Date; b=IYg3ZFCCo7FSkJz9NBwmYrJsK2wsAwteFsI6B1NfEnWb8MEOdex+CZzj+jakasbw+EMkc6N5j+HBbLz3N44IHkpDK/hhk5gALadAhs9DBMO0XAwSDUYAaIiSsf2kiT+TaR68HVtl7R3Is+VbEn3LbRFZdW+gTuGZPUNDTNzjJx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuIvsgO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuIvsgO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CC9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782644313;
	bh=EBVxvmwftLWBicT76qsWLiel12km4CO5buxAszXzLHE=;
	h=To:Subject:From:Date:From;
	b=OuIvsgO2Tc9CQBwuBmJALFJ3CqGD6Yx9z1CwKzTdvYOZz5CjqoZdy/e+lt3Vw2Ttt
	 n5fvr+o/S9FcppYUbGe3iwgZ8Gmo7udWo8F3YeKXAZkh+uKX8BHDjGJj38zCnD2UAA
	 us7ePfr2fJaqL0K+AIkptOyLSks23KU0gp8WuTQj5B9gh+a76B8KIMKXFw5FzZ1Tuh
	 pYBUuyuAJmPsLW/kC6hU7xXbq+/2f5cn4I+Z2JSwodE81LWewHK3fGwbTJ8PiQf/yQ
	 jZ5FLe2VpqXX3WybJVm1CBnZAcbcKSeTr4o/ySKIMJKVi3BnuW4q3DrcFSZD/9GGLl
	 IQhMqlFPtUggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB0BC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264431368.13617.11944821711840777069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63dc656f48d6aa455b7944356ec4588b0da4303fd1e04449fbe80294316bf6ee
Date: Sun, 28 Jun 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782644313
