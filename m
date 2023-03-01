Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDF72588
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 12:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E132AC433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 12:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677674765;
	bh=7iTGS3T5kWcSKkeAoYX5DpTvubGWdmSNOwhDFIcg/CY=;
	h=To:Subject:From:Date:From;
	b=qhOPINqALJ7yU/UF+XAyCNM9xkgTkdsv6OUsYP/TvF/VvTX9hc080CwprX76p+Tw8
	 PHrThyGQlkPQ+lRXe9/jRZDcPRW+6wj9/anmWXy5+5TJSgqLpw6+GI4E4Ps6C/eM9e
	 WmxNTxcAXz03E5IdBq4eZk3w+gQLh8WWDontsl+hgQOVHke1Uuj95+vPN0CymMFdN/
	 i+MmYN8HpA0Ybo0pqK1izvUrLLRgTUIUj7+boM/SsBYjI1iLTepZT4SHug/CWsVTEL
	 NzeGfICIgExRgw3iysYMEiqEHFQvq1fXSYDJ/jeKnFoUpx+neuPaaAZHEM0CwiCNwV
	 HUaEup+5+zPIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48E0C64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 12:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167767476579.16420.13126765796296847622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b89d1c23ec4d4040b72885b75c4a9cc5b90a5ea5ca53d2e3a72c695e3ef51d0
Date: Wed, 01 Mar 2023 12:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677674765
