Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51303C941
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 22:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DDC0C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 22:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678399386;
	bh=4WcP4T/BW+DBCXR3HHvmM77ODoPRFjdWjX7k1GtQPBA=;
	h=To:Subject:From:Date:From;
	b=u4VVSxLZX2Wd4dOrcZ2awwBzUxRVUp4Ni3y6TDNmjsOtyQc3M8VzzeWkknKlkIv93
	 LGaUT6RrXcp1lXy8m3/isCcFKzNQA4Nu3gBS0Y3BmC7Hyzo8fdFx/Jq/YLtbljyo9p
	 CnkE66Pv2jvpLVAVltggQ3V2xBmAqDb60KXw7JjBOznr4c/d6VCBhSXj7DSy7ud/2y
	 yAHhcC92mKqfhzrewhBz7xw5NP9Hwe+gPhoGA92sSGZVOtt9b8fsYC5g88BgrL0F5S
	 1CjegcuTMOs/pkqx5Y5GMwYDrT5KRAfF/eXXvbf6GSwkRgCjx6OInNjCIA8QEAhCrP
	 pizCIv97aWDaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D86D9C64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 22:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167839938583.18609.5962991629400546075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9bb0648601770753897483a7184ffa04317b310342770edfc9a62e6ef4e039c
Date: Thu, 09 Mar 2023 22:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678399385
