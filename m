Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40410DF4C
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 21:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E9DC433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692047588;
	bh=EOi1LIqddvC5BRVYiWtRjLQM31kGnfpFbs762oSHWLw=;
	h=To:Subject:From:Date:From;
	b=aOtoHugGiyq7XUcBhbr/FPXiZ0X+3OyiSmHR3l8qzJVpZD4NmohC355BY5GPov+vA
	 fgB/pJq6hzUJXAGqLQOIDNPNFDRFZrGk78OPXtpUVMYevefcQFKW+0MJ/EI/jJfmGG
	 MglFhIgek9jWPEtHTuTRBLN1HkckxWJ3/YYEd17Mcho6HR1/ZnvalMcgE+XH59tDJ8
	 cuOYdoLFpNLSj6KZnja/LmndZfD7+K9+kQYsmjf7dhAEaJb9DTkN17mzIq6KYqBIgF
	 LbUETf83BAfOIgeIwk8njAg/MgBjg/gYxL8LcGH3m3UC0nchWUoWDTBd/SsQ0oBE53
	 cOIyIxeihHSSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8332EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 21:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169204758868.3797.12244135998017331281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89cd81a15cc39dd0627ae116bb5818a792255be2010d7ea0e34441058fd9eb95
Date: Mon, 14 Aug 2023 21:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692047588
