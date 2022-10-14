Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0197B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BBACC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665732053;
	bh=7dNmT5ZZPetVn1zlqGGlAYIUsKmAQX+RJmRx5CHFmPA=;
	h=To:Subject:From:Date:From;
	b=bOpqKsOiEWtvQ0LlykUaCVlIXDzUk7G32CZOK+9KbFrCOAEKhjU/hKVUPJw2m4X8K
	 9p/RdFfPiEMZEUi6VVYIIteyQ1OPyH3Fmkk5uuWLzuEddgXLW2fXFTZuRNoNTWofc7
	 M8CmWVL+iQy41ulNBBh4GshLwtvs0ES2q6jA290ylRh06HHfthzMScCyHtRf3SbSy6
	 ioD7Wj8udMhD4N3yOq+HcoG3WMXmTd/F4aUZfvhPLD5t33MpQlQzo62FJTfaHKmsQV
	 jKZnoNpac8ep3ZxMt2NDEMK7VhNZIXkpzVNMzH/6SlcRl4eIN6x0XT5+/Ys+3EJIqQ
	 9pXnGJjoAyg4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51910C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573205332.28485.6604450425852848091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3e328e4c59f824ec9f610876211cc64d76486808647fac74ba1ef7acf615c2
Date: Fri, 14 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665732053
