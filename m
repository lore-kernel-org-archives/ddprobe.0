Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0924038911A
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773288894; cv=none; b=kCb4TQZudjLxmW87cC+PDQyRuodaXsAEi8ELJRBkkHf2fotlz/W8rQzuBaysMaAc6SWo8XJ59rtinxry8vI7dACdfPvBMFjNLZNYlQ6208OBq4EmyCLcHpID0Bl2sqbz+h4om3r+aMpq898hfviMhJJGgH7bCgFFaJkYB1P7FJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773288894; c=relaxed/simple;
	bh=QolOvTQ/WmNEoK79QnFqSaETMswHei7HQ9HxFLGU5TU=;
	h=To:Subject:From:Message-Id:Date; b=LeVwEJmseWw2/ObPzQK1KAHRBVKy+62hDwgBdFvHyE7dxsKAskrG8nTdrjGt2Cl2XbOcRHnvVtP4rdUtkeTvS4qR+EwwWoVSJFsFERyG0YPMf+t8WX3hE98ccJFFqtNW4SPfNMRSlBz1Y+H9B23sYZKFF3UWm0jQOgzAQPOOdnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jz4jfG5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jz4jfG5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7784C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773288893;
	bh=QolOvTQ/WmNEoK79QnFqSaETMswHei7HQ9HxFLGU5TU=;
	h=To:Subject:From:Date:From;
	b=Jz4jfG5jOUzvH8mz1ArbNojXaUKPEKdWUWx8C6R/ZzaccWZpZCJFA2i8OUcDg53Jl
	 ZheWf88cnvSloltvKWjus/L26t7pZIu9jRbzURWrlwpj7bBEG6X6+4YMs7Ymx4zKwn
	 33ePtDHE8hHKbfWTloSZuJ/oZLswehKoiwGJPoYcQmnC9a5LCHRYn4S4RAdvFDvqpF
	 d2t0RG0sagSQwuK/2xOctPJsSh1MjCesSrPvEmL3nRatC+jtBJS4gcQClTR+UdAEZM
	 Es11aGwEhNyTwRO5aXbtH/IwFBYVm2uUmMc2ARZrNOyKndrteH/faPvECYn9pvIoXS
	 dkjkrRU0LWaWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D2DFED2C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328889358.20479.3905177937817372294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deef707c014228c8f4fd9f1a370ed2af956d322fe5c474cd64c549b67f75380c
Date: Thu, 12 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773288893
