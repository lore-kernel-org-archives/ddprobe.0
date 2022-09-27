Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA15C4C64
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEAAC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664310053;
	bh=rABMpxApGBcRMkPp6FwRUP3NqyrTJVhd+Cj3I0wtgaw=;
	h=To:Subject:From:Date:From;
	b=tbV5SJcK+s6NKV9O+QDPf5E5uG+eFqx05jv7cedIQZjq4pTWTmGC4zLNLQtsCg598
	 xu8EEvNuXJk5a/H1zta0hNhqkm6nWf74voSUAMJZcEr7GEGIy8wGU/cTWN8ZxL2EmX
	 x1juI9w2Eav7CBYr0gXfZ//EYKy1+vcCkQYbu7WCnXOJrUhS7RG/y4k9PGsxzWcj6I
	 0OyQpe3gUDEIkR4yMuNic/p/fG/Xn6TRqa74JVxtd+GL54fHRu/Yu4YBdYlQpEjAQa
	 IBGYG21lRS9pJifB7X5XlJAkoKysWj5ZgT1DBOJU9jGFIETXjiZb5wygJ1FhSRszmX
	 q59sESSowb0Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55606C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166431005334.9240.7591758657739787621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8746979e6e72a39859b785fbe970824be5074207ae04a827479d9851ee91588a
Date: Tue, 27 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664310053
