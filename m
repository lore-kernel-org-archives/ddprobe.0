Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B301B622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D4BC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662699653;
	bh=jRI+Sb/0EGLysyJWdEJxdSAZqo+9vL8RjqBZnFCql14=;
	h=To:Subject:From:Date:From;
	b=IIPLQB0MKl6onVmuTlJdL3o7GJi2swBzNX+LW7xcTUSWU0H3CMd+6dW6NqfVlm686
	 EfpCkCt7pDuBrfOnhF2SKawODT16l4DqsLeK4/DBrVjzfUBRoMmSTDsTW1AyTzdOCd
	 WHLfFWWSEY9DGcil7+ej6TtMyfzgq66C15Dw/iIpYZwUlMs8L6kpF3Z2jYU1gdrQ0/
	 hN8uBVNedsyZ5QtOy+KcWGSjHi8HqHdH1AEfBLFrO3fS8vooUSUv3UyGcHBixGiE5a
	 l3WFAFfmQ8Eu2EEjdD7qPgt6a1hUmUwVLSFvN580cMe7nnAu4MEgaH//kT65tdEeEj
	 3UTfE5gI7sWSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57374ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166269965334.14781.5629045111422779993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9c447b68a4cd01dfd768ed1ca81e866afc67592e273c4820108fc6fa0db3a5
Date: Fri, 09 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662699653
