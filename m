Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3A47E5
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 20:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D366BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 20:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676148245;
	bh=e7ED0dFIzB9JMqijKqN1ZVQpbmtwwD+ISlIP0pFvnpo=;
	h=To:Subject:From:Date:From;
	b=cXERN7AoBShfVXdYuginH1te37jYrnx6a0mLXcO13WIOPXaDLQPjcXJT2MTjkOB6T
	 bB6KOxw9Jsy2Bb220B0FVEBz2SQ1VK5kaSMCosQXQ02QBfDfdVy8jJLa8ZnWGK/01l
	 7LteELvbb7f6SXO5w6zB2vLAY6Si/XAmJhFLM34d5lbgYmmPHnR+s4CnsTrN4fxf2n
	 b4DPEkxs85DY+4CJMvpu36V8v2iVQB2kbh2WWeWG3K1dZzY7YrThOdjTsYxKsv2Lum
	 Z/2wsIIpi8AmupZRTo64OSwjHWCL+QmrmQXW/3SVXl9SeJ2ZQBpEztJT0MyyS56IOV
	 CSl6LR+UVNbcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6140C636CC
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 20:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167614824573.24887.13244740250019513591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34c5c5a50423c128c2b54c0537636b66fb3a961ac52ffd4c6a815e4eeedfd6a
Date: Sat, 11 Feb 2023 20:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676148245
