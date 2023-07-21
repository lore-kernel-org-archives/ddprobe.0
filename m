Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EF01BE87
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 13:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0360C433C9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 13:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689946328;
	bh=OVVGGlGIu6+0MPyJ6XFwB4FaRFVxGUYkg0t9uOOQ8JA=;
	h=To:Subject:From:Date:From;
	b=AUdjvtMl7UCcx5sbqVnH8On7kvn92h/jJmgQFfKfzV4bMp9gJ0jZJcGr6pVHOxoBv
	 4h9fTejLLlYvC3M46m7IvL6M2R5sWFk79Nj3zlfv+RCEVwpqKJed0tRB6ZROA/nGUV
	 emj6R5BjuFeP6S11RmCHY8oM49+nEFmvaqfAUTMmA/IrqfGAfQffGfHLexFcY1gM0L
	 9uOSxRrz5JJ/Z8QTZz3O61uWC9qSf8nAsuQXOl12P8pm/eIVvh5Phj3yB3J/cOT0pM
	 YNEG+s1UtcBcGMPlrHFYJme6LIqbWdkUFZRGAzWWIPC7HBjA0CQs7nYsLPgS9HPWCg
	 ANAUhvmbn0Zjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4545EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 13:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168994632866.13995.16253690472235627659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c720de2605a3d4a86834c5898b22bbdaf3515d1e1f4466759c43ba956d513e
Date: Fri, 21 Jul 2023 13:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689946328
