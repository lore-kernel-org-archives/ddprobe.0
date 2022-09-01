Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06F4746C
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E547C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662063053;
	bh=w3r5dOwKxRuYl4jYmW7OWJ75nacdGAez7+/R68EtaaY=;
	h=To:Subject:From:Date:From;
	b=rDrRcOdhI5uH350B6x6rRXhv38tFeV0nmvfwl/mvGJ17qz1mrFu5emUKV9VTsCbAO
	 fHkHt6z+BfyAEZ7/j1V/Hyl0HJZTlZA2QK0I3YLon9e3+IM1MBgPyPyJTWTnoEtsYN
	 PSZynaz3hehD49L7q/mpz6J3m+Ig1HIeUb/RKdmmkLDGfH7NsBxHbgfiJRHLmUYQdW
	 H+olBViI1ByNXmkxNv7vxK8EI1rySleErFSQxEHl6zN87eUZ9abdbJ0maRUbGrk1o0
	 0X/Mijyqua1p6gd0EXRZCsVaus6uiUWgf3MNsXBgQ9zrA16E2yMTyTdsR+Saxrjmni
	 cgsMzcWRkCrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59319ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166206305335.7688.11718584226397748605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd35b6de1f707899844d965fd244b81ce5cadd7b702d45a9be6d889152b47820
Date: Thu, 01 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662063053
