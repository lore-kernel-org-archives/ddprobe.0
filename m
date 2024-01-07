Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8B312B72
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWopILQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8C4C433CA
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704617296;
	bh=njE4NoemGFseV0LlvpGaWWVp/oYMHdiEfOUartzd2GM=;
	h=To:Subject:From:Date:From;
	b=jWopILQLh4e+oGrXUMv8OmBEK2gKzD8Z1A/1/+iJWx0iWFWemHo7N3bkyuS27LL49
	 7/53tJK3JVAEd8cqsS4sWpg9DTkXzwuN4Lo8kwHMw91LYIjHgPw6cXo42FbX63FXOl
	 d514OwlYxQ2vSZJO0MQPgx38Cnz+Yzy0+95EPAm3PR2C9L/3z8NqAc9MmZIvdsVItN
	 xeZWy7IGXwkpi0cuE+0jqzZdR6vfIM4pFT4iro7WTscvX24jkkkLGBzHUd/0OyezhG
	 GbWvpQ2jzl4xQD+BiQZ3K+xeSEjxaK9lizu68TQSgMoYy8dcN0c9SJnzWvw6RHwZq2
	 ZYL9Ch3kB6meQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63628C47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170461729638.31178.5837342789794586130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4869656815ced777a194aee4bc4a187e2e101855f452f088ad2558a0db37e1ba
Date: Sun, 07 Jan 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704617296
