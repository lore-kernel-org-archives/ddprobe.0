Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAB479E5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720941623; cv=none; b=k7t4SicixC2Xa84Tn+ToXqpFERJP9okIo36sA2Jkzo2NVrJycIc5e0jbtzTmJ2Yn1vU3jjXurnFs8Y+OSEjKRrZZpMk1keH8uIri3sjoLsgajg8XD60tXKSWIBJ7WT7n5gNldyDryo9kRC3W1ucmZM/NsvYtQsXXzre6Drl7V78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720941623; c=relaxed/simple;
	bh=FczkLrl5FYQ6pD8cG3hPrPF/EoduFHyV6pCwVlaa7qY=;
	h=To:Subject:From:Message-Id:Date; b=RMKgtB+810oSM9vt3Iov8ukpo+41wLDb54Ikbn30qRqPnkKNREYSiQ/TsqNgqb13qYFEYnItWJWI1GEQTEYEk/NPOhDbO4JKWO0by6xoKkcgwEvweMwb0p6EFQnDK8sAMBbk/zzUYI6z8WVquT3pVyHZLmnN5eGMt8h0yGW26XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzLNZQ6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzLNZQ6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFD7C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720941622;
	bh=FczkLrl5FYQ6pD8cG3hPrPF/EoduFHyV6pCwVlaa7qY=;
	h=To:Subject:From:Date:From;
	b=QzLNZQ6uHtwrilTrnQMhKqL56jGbRGGSjUYJGnbWSJT+VpVjP0YQeIhIvfhNppEgv
	 fzkvWVpjBwaOGUAlTXgNr+yP0XRjDxDh3YiyaOH8ken7n4wO+viTpZrvtqBiWzZOcL
	 w7pnL3wF+KwYIowir94sT2lWdmZt0jlZCWyDmtJhJ78X6yguaUxb/j/mPBmZBRMF2/
	 RKs6TRv//dEFvPzRs9xcqOH29kdKtcQaDIdJIrF5sjkd+3czCNzTvX9YKqFgm8C40L
	 gULKCQIG1ALVDD/czHTVdzkW2DFF0PmsmK5RaODOccUAy2IOEzMgnFKbMy6+l+1pN6
	 A8J2KLzDwJM6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E9FC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094162278.29114.10304936377995819964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2d51160bf2e58e6c8d81e0f0e18667afd0ee170f3fb5a964a247a25483adfe
Date: Sun, 14 Jul 2024 07:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720941622
