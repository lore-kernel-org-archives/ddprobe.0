Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F083C1E
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 09:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03025C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 09:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676453226;
	bh=vUhfz/4PDYZIhSFgYBZ9JOAH8eNOuAfxYrhb8vKAD98=;
	h=To:Subject:From:Date:From;
	b=Ai/SlV1YkiWKFOPbf3wdOxw/klxdEudh7qRdCa91TknFu9Lk9DlGVQBi6E4SDuHZx
	 1eqjW4PUo4mqvjZeWqtrC1verPYsmtWjk/i+I5fmrItyuKx9BSzNyZeIfZHHX08VhR
	 7Y/juL34gMmZh8iKvpMFMCalJ7czb6jUiShx9SxptHuL4Ain4y7zgF4udrbuLGXN3U
	 4GfTRDUJlKsKD/9r4V5BAU3jwFUjBiFHqyBzIDMtw38ohOLP+oDbUVA3vSpyFa1Ita
	 hYphXVaFXV4zb9/gMY/cFQNZK+Cp3pn7b6q7C6db1aixDj4HLpjpCmi9pLaomwmo16
	 i3pESqTHzC5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDF5AC636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 09:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167645322590.32568.14117522070917927187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bd6d7400c7c1d1be53a5c66c0e63dba6d380a59bcf29d5c19c473d6f16a171
Date: Wed, 15 Feb 2023 09:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676453225
