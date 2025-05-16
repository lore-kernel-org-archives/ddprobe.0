Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7D578F3E
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747372795; cv=none; b=nSDmkWSKsx8r6SdasFf0S6cO6AVQJIbmFYqfNcTOxQX8aB8bgo/ZtEZNRga0eAcHkFOJHxUArEJh7fOAfJscSxz1vbZKIAC2yUgKIaqtI/I/ia9r1DdP2F14cLxdeTScvGMKedVu0WSu45hFwp2k2pk7TjHGtivaB3FOFbiDbgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747372795; c=relaxed/simple;
	bh=pnw/WjFyEWg2jufB/hFLz8g9JAbMCWzWwybdeV6ftdQ=;
	h=To:Subject:From:Message-Id:Date; b=UtPqpONLjm+NV59sgcCCmYBb7TsWKzvhAodnicP+84PboxUb29JcHrvbOgHBskmX5440xA0RZUbL0mm+BHoqphp2laVyumboUqmqRCHoODBP/mGY4mzLxnA/BYkv6WKMJDMkl9eUWnqSxEpJGNtMs3KXjkdSBTtMrVpp22ZijZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWlwHvM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWlwHvM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20E0C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747372793;
	bh=pnw/WjFyEWg2jufB/hFLz8g9JAbMCWzWwybdeV6ftdQ=;
	h=To:Subject:From:Date:From;
	b=qWlwHvM+kDea7Sd2M5ANYCqV6LiNnhu1paTMHxnQ1hfCS1N8p6NCdwbPcQ3xgMaeQ
	 D7/Wk7CdmPKqAw0kXNyHAudLnE++wIygIMofoldhj8Jflwo9NRRL/b81c0ZlQO5GQ5
	 jntcmBPgMPmzkWav3tKNrFCRGj1cE81wmDcwMUah4dkFR3TLmlJii5MPzgjGQbeO2b
	 71pLifQZr2QQwBtNxyZz8A1sxJT3dPfZQrF73M3N5H6E/SIzjgTYfUDGOv31C1171Q
	 O4qALbExEJtlbm1+OTr+wbazXB2bmAmW7PP6lx2ptTES1ilNKqUK5MCu9bDKiVH3G2
	 vHiCHcfkc2gcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC6C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737279357.1446.5584343868289721820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08f28c7ce2a11b4592fbadd55b781a90e439c461c814b31115d024380f5b762
Date: Fri, 16 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747372793
