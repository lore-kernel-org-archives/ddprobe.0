Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160601ADC7E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771368894; cv=none; b=p23gtEBtwH4rp1V35PU/apJ8eLu5E1Zn040HXaL4Z7QjkyO5YHi6Fp8c6p8usi9LrPDzLZ8yQkPx+jNxEGxbvwkL03kdRnqj7RnqrpmTr8pcac0qhr27wZhD4FjdepuS5I08QHAtqrb/dGo4fN7qw0X1aA2itWxjImfqhMIkI48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771368894; c=relaxed/simple;
	bh=1qEv7rlV1K77uJIiYilY96xLiMjiTgosKKj/OQ4asTA=;
	h=To:Subject:From:Message-Id:Date; b=R3iAwLoQrgwel5X9aVz9PQi7aMr1BSzOAz0UuTFL6heKWgwFsOuitznmaaN2bTBqUPR0dMxF+1YKaSlrfkfwWtGMjdPI7D7rRxrQ5P3+qy/YcjBjSTLLdAaZ/QvTDN8TQ1F+XnbcQbkdNB+LzC/OP8iQF7ewiFu25k1WV2K14Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWKmYhgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWKmYhgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F7C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771368893;
	bh=1qEv7rlV1K77uJIiYilY96xLiMjiTgosKKj/OQ4asTA=;
	h=To:Subject:From:Date:From;
	b=XWKmYhgFJbEPvsm3HJVrxQ7Kym3xMOm3fWrdbKMpogBtxjP0stnS8DWLY/lxbKKsk
	 CRXAmfpEYJyK1M4EqSvRlKCHMYjx2maISmrqnCDBKW3LSEJTmmbtkwBYGjG2XLSqMJ
	 q28UZAlpcH0cYjIlG752VA33YtbZ7pI2XqhtyyIB4iUcIAfr8wU4QVBiwHMu89N+vI
	 9OX/6QmZ5YKpsN4kJL2RZbd7XWrcd22ASUb1r6ZxcHq0y6c7mVVXSrfszYU/gmJYOj
	 9uVOt2XhQSsU11xm4BQCp5CJDhemOlPe6ypsFJZ8rQPbL/7joRYwT57io9zYxqB82r
	 DmSeTR5NUiLig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E0E9A03E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136889359.2467.8544361635122747767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb5d73665eedcd4188a881e9f0772014490882a4e307f190b1685c740314017
Date: Tue, 17 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771368893
