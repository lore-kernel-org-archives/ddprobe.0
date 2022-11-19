Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0E98C1C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F28EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668877854;
	bh=0C7FJDFjcizlgT1usQvB9JNrV7yIdob+4zHczv5iu6k=;
	h=To:Subject:From:Date:From;
	b=bSAWHtUl3xA2/ktTeBTTctnFS/BpIVt2hoiL4BLuyM04MBSX1cYlwGJCo7jGjgVBh
	 +A79OauhtAsw+wTvHevgxatK9DOyjq1esn/VgLkr9RR/LB8s5k2eetx4Z699y9d7CI
	 nzexMHQLb7ZrIfmYGPN/4q6lgseka4vE+sRONSPTgevMxpRHxv4aOsjnb+2lm8iDwJ
	 COs1L+hg4gmdGpY31jyzx0whw3CKGFAxUf9WOXEwc27AqkU8y1GmG2V0ZURmZHj6Y4
	 tiQQYME2r9u2bWFjG2LBdMLR8NSAYqHeItOezI21gmsBlGWRpK6bUtA6s2F72/HYs6
	 gme50ae8E3VgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A640C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887785433.32240.11855501998234434695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49fd51bac13583e33569bc6ff14ea8f43361d6fc41b70578c88ab2bd88025ae
Date: Sat, 19 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668877854
