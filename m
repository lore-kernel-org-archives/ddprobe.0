Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EB37262E
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779619954; cv=none; b=c4Zy1vGvRjWDeGmlhOnScg5iuxQgtsewFH/qj8q/k/8PFnP1ez7r5uQgZmh3TpIa41GhNEOFrbHx2Lheq8360kTXF5f52m+QsmBUiuDH+NNTsQH739MIJ5Sr4vQKqnUFISWgsy5xzCQmaAo2pXWHImY3NwxoMUSMUmdE8NS6wmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779619954; c=relaxed/simple;
	bh=Apmv+E3DST0vH4wgQdAgQ413yfGANmB22Pyq3o4jBsw=;
	h=To:Subject:From:Message-Id:Date; b=PSQHnJwfdzPCzCmG2MjxapjQ84FfY+sUh47HLw6dGQDcvCaa1RkUZeKWABQPV1AQ5qD5XQfNyXaISKkt6wjDG7MHFMv+PYYRsdPZf/UI1mbZWLVbXko37Rwrb136AZLkb+FBxgC9N/VLRMOC2nV5+wzm0zgFfLdGGVkDyWCCoxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqPP4/6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqPP4/6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6DCC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779619953;
	bh=Apmv+E3DST0vH4wgQdAgQ413yfGANmB22Pyq3o4jBsw=;
	h=To:Subject:From:Date:From;
	b=kqPP4/6Lp4SLBqUDaEmvX5EXDGb5abKX4W/DZ2sjCw5J0JxsOpcGbXjFKzNfYSG0d
	 lRhQQz9jYAEBXsyKilY9XlpH7X3dZ/TBk+z24RgtRRYrGeoIV7rrsA+SXGieq4sC7/
	 29Nji7u67NxQV06xi2ABG/VouVI0bnCS88nWHi7pQFd/SFr6OjA+UUiIxe70f0XBC5
	 MYQZUkLtrtkToMmxRXh3hI5higWSLygfeJN+XMLRRGf3qtH9e0B+Wn73NTiU8cuDT6
	 yIQygTVw1fJ9FEvaY8J6JKi3TMY5ZxfHEvWO7zgSknS/6YBT2ef65nFop2jiWgVQIu
	 cWgFh8nfbOEVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3A2CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961995368.11059.5567384587880343135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e054f9aaf44290624081d13b0cf091ba5fb06819fdc8fb81d806f776b10713c
Date: Sun, 24 May 2026 10:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779619953
