Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295C51DA29
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1NnsTxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CA7CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699738096;
	bh=S+RzHDeN6zQPI0sxS6O38Hxg1AlXoCiz2S7AX+IQkjE=;
	h=To:Subject:From:Date:From;
	b=Q1NnsTxxcr4NU0PXLpj6Mgbur311y2kKLJ7ROw9RobNZgdtC3tURzeVXMa8YNwKpK
	 9LutOPpMaziP4JfB74pHGMbHFgkn6AsNvY1+fDsDmsHQBM9lYqHHklLgR3MsrJU15U
	 JN8/rr+nAJEc5p5QMfffpXpw2S/Q8jZ3J9DBda2NZJkMPDuO9mTyqU4HQYWd946bxU
	 uxycNsnzBz63+bhIEu1gE1OfAswoYIX4ycuX04+t08capnvg8GPgqJqBYH8w+6H7EZ
	 Nb5Ahf2H6d5xHbmfd5W9anTO7LuKY7QtQ9TzfQenmiLmsPi0MRRcp3ICYr7sBemlG4
	 Su7p8pjGw++tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C9FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169973809641.18089.18032371952945880385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6cf877f49b3333af267112c41a2218c3f664fd1ac055c652acff7df0f2a2446
Date: Sat, 11 Nov 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699738096
