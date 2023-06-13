Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFF723DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 14:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA49EC433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 14:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686668228;
	bh=g9qJCrFxR0tqaB/m4+ENUwh04DbJPLxaYnxIbAzbYZ0=;
	h=To:Subject:From:Date:From;
	b=I7Re3zthIjpRVnljIyiskoH3iTk3f1y6xC/Rv990AiGroyHEZYSHyoz7NSMPQ1h9s
	 xAoJSBNHbEzBDYB44Q6oEX+1qoKh8aEX3qhebY6va039G9rZzJ5vgUQWbeIKN3w1tJ
	 P7gYFaLV/JKxfjW+Nfa9ppyIny5wK91/LP4lNy/atNGZdaq/tuQ7VI4nxpV2SCWxsq
	 E2ynScOu6zeAx5lc2i5VLM5rFpEVstAq5lmMqPXubmMErC9QviMeTXqfagBV8lvoAI
	 PTXlvuNLLbg61c2SDRlTnKWehu4ftRZm0pNXWSqZUGU7uZNFQJy5GhlDf+H++jjBIz
	 2jXafjikalb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF45FEB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 14:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168666822871.4888.7217427501960872481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29572560acbdc28108501aef49e269c3440ec33882d1e4396248fbd38a6a96b
Date: Tue, 13 Jun 2023 14:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686668228
