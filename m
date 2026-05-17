Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2916F191
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779012034; cv=none; b=VgXyMyiqrGcHl1sFVv6NYiW/jPG3EEWbfAuq0dk2w/fdAbK3PjtJI4dvISiLxmOmr1/xZ4x4r7qwSoaVtZ3Lpq7/gUs1HEi4K6oHtwvss8kltPnOuRdAP6FpvNh0YLPParX5v97cC9VUE+GYVCqrB6mNAbkri8/MX/vUVwdtliA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779012034; c=relaxed/simple;
	bh=dTx8Dcat3H7qL924XlRMlHFapE6+9Sh9bxARunAX4iw=;
	h=To:Subject:From:Message-Id:Date; b=OpM7DmJT/S4m8zwbSo11Qq/VVvuDoQYfE3xpk2Ss8ZW/ZUGTrebYmlwC5oxgOWa1ZUMtCABipCdoOzrBbMPGJX6n7oXpW5RSQw5mc34EnBXREGclhIVK8MVExEXHtqZzhj04LDtnQ6ci5E7+t4hNaQeiwHpIz2BvsYxaDK3e+Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Je0bsF7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Je0bsF7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8371C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779012033;
	bh=dTx8Dcat3H7qL924XlRMlHFapE6+9Sh9bxARunAX4iw=;
	h=To:Subject:From:Date:From;
	b=Je0bsF7EpPNbmH6m9OBrH4xrUF5rdEsYXWCXu1oTrTNZUQRYLxP2Xk1UPvigCRWkv
	 m32UmC8hsOvxjd8GQf0Oz4ahj3fCg9sYfG6P3FPtnNiGXQ9RrKKoV8aDrp91d6xZEK
	 mHyE8Ko9UbBZMz6dEhKn9IouB2gGqzBd53zXUuaBrpYFItZxG8YrkuljOEf8Ge2UF5
	 +LKFeJk0gEKQgzi1M0oSkemR9Yh36tsJnRgNGqvUiNu4Xu0Pdr9Q2JHmJs9MO/em/Y
	 eeRuTEe0GM8tv8RKD/rd2SqYoZkzxGiNNkJtv393ZFnbk59AmSxpz/OtWQ2jYix6II
	 lxgOaAB8IwBsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E50CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901203369.15128.6313017790738132604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b5d97e246196df267f0942151bfef47b8422423f46187182231684caa6ccb7
Date: Sun, 17 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779012033
