Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8A41AACA
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711519097; cv=none; b=pFxS7QgRaUePWxgXUbhl+rIhF14dkwIXgmOOeRQXEY5uxYJA8sBH28m/T5j7UnMTdMzFncMYQ3akkZXJH++z6pGNoBUYYGBL1sY3Gr6MaPuRDFXnuiQ5HMd5nL1A9WW7ZjEshJq22FOnHOn9f+j1RVmTXenXjLtKvygQW8mmFUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711519097; c=relaxed/simple;
	bh=1f7PtA9PG/LMlIGdadOVBwH/JnoYr3/PxnMnBRM3Ww4=;
	h=To:Subject:From:Message-Id:Date; b=BvAbyy4X012r6RIuwUjDeDnwlUm09VwMHNExYOtPMs30GtXXV+R4Wz7NSjkIeyxQ83Yl6RoVuuU3xOXz2wyYOI3Ru7WVgTYzOSOpXzfl8VrLQu1LC8GvZoVbd3ZHh0OZ8bPROYK3G/qRkjLg3Mgd2KGHJ9JsJGJI6q/LXGEnME0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRtvqWP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRtvqWP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75790C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711519096;
	bh=1f7PtA9PG/LMlIGdadOVBwH/JnoYr3/PxnMnBRM3Ww4=;
	h=To:Subject:From:Date:From;
	b=NRtvqWP3TTuOLDLMw5pGVrDu8KW8dQ2f2jlOasovc9eHpyHJeEV/J3AeJpLdyyJic
	 zqrqWw64rdiZC2SvsAH4eMXT6lzG5kyNaxvBTwbpNycvwXQ7LziYwdG04QALGIFWCA
	 IZXqbKao9G/AzXxdmc4REgG6QkTcal6BRkUMb0RJMdOeduxEGws4VdghCRao6MYDru
	 PnxByPrMtVg7VdF3HhxYNJlSOh5bOzvlFE7otnRDexBkdXPQEHTyI7TQUMK+ewBAla
	 ky23lszKWoRy7K0B0vrhDh2Hw4860w9i1kCzGlfuEclFO8kQN8Kn+5rgGL0UUv6vl7
	 j4JBzLfXhCRqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66263C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171151909640.26026.6259388303000141130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc24dd83091c03f82ab32601ff616dad04a9e24a73aef1e936c7a113785cbc2
Date: Wed, 27 Mar 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711519096
