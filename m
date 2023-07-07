Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E6D23C0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 06:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD9BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688711228;
	bh=/H0ABM+FwjgTOXvl3uF/3BydbigAg3AhgXxDOOACkq4=;
	h=To:Subject:From:Date:From;
	b=BjwJt5Q87esOlaLlkrRNdKrPdVXh6SAcEHkrV5Sf+REJKb5b5hlT7Mm78rEjW6DHw
	 j4UG21aEmc0Y8sc6Kv29dAtbG/3W6u7AQgiqchQsgrPe51XPwaLXpjS6RZVermd1gB
	 6O4Uo0MFF/wsM391S5uJ667nrgdp6DfbGSV8FmO+1IHf6QdSL6d5qPOq6Z35bR8MTm
	 TS5jDavycaVkFs+lvtSxqix7lebkAqxR89m30pw8wASzBZzKZ+aj0tZzigbeOEFNO3
	 k20x+Ve3h4v2ASqkvRc96j/CYZYG1bG69JUeHqz1DciSKaOkXH5PiLPYwdnwVbbUXC
	 B8BHfooPMMFGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB0BEB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 06:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168871122871.2424.8673464491497277309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ef507fd63dcc4dc1af539cc8ccefedadc759301f265efe6270f310f7e41980
Date: Fri, 07 Jul 2023 06:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688711228
