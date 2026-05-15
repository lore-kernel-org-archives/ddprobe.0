Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316D93E8333
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778866834; cv=none; b=OgdPGkXkm6n6mxVv8KA1pH8ndbla7nQ+zVx/gDkQ5Vs47uNoH8kyT7M8io8noRRozfm9HaceSi4ep/7N3nqzzNJSXMAMh271siOwnDSk0fQ0FLb8jmWa4qZG+SsxtbJLTAuV5iYQAVHXG/uU5rUOHpZRYUvqR+vjCt0Gkz6RwaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778866834; c=relaxed/simple;
	bh=xJIysowqZKGpMG0p1hC4EUQ+INI5YbYlFxqJScWBCGk=;
	h=To:Subject:From:Message-Id:Date; b=uJ5dDn/SL/mANn1APR87C63gtK2g0b2R9fdAPM/YHdM6H1T+xzTnQ5vxqsC+pogWTE+nX9ULKfRAqQm0ic+wZUhDbwMUCeSMWXEHl9fxU+IrQug3KiWJU3/vW8ntdS6Xli+dpu1LDu2qMq+6zY+2RT9xf1+bdfOFPcc+OhB9TxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZYSgOCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZYSgOCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B930AC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778866833;
	bh=xJIysowqZKGpMG0p1hC4EUQ+INI5YbYlFxqJScWBCGk=;
	h=To:Subject:From:Date:From;
	b=KZYSgOCxPscPbUq5ehqGE1P6E3vasF8+yCc7C/K8jR5as2iwtSBxzDg6KCUNTKtpn
	 RjhbYakZKTQqVsq4w1TGo+qloUk4IikvZbrQjnjHQthUC/d7rnl/mRHb6PwgdBGs0f
	 POVRySBgQ6L+eFMdBf5FRAC01Yz5Cjqf1utp45S2rR5dUd5Nie3nxvN40VC/LclI5T
	 uR18GHAO/jlLh+OtRkW/orEfFEOzbkZj0iV47IruBOdRBwRtBGmoHrr8fb92aRCy0g
	 GFaC7eh4f7nN7GiBY4vajXL6o2WOCuiqP7eEmSaBe29LzjTcrI64YapTFp4oQEknhe
	 H7C4O8uYaDgNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB63ACD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886683369.14466.5270177266614504905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54820225e3bab7095c9bc9824d11787c0ac4961d445425229b91254d3b0d921c
Date: Fri, 15 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778866833
