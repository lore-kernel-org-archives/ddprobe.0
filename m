Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D023FC2
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8ACC433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666030253;
	bh=UCWockAgoanLFkvQRKaZuDPX7gm7wMF6t9iq3FGiuSo=;
	h=To:Subject:From:Date:From;
	b=uBmRNECp793y0K7LWcJxdeC13cBl+lzY9JmmL6CCPoiuuVrLk3okpGxXUZMiLPLUY
	 th/jC/N7j8JLp6sPTm7CVcIoG3u4Z0SMEoPUlvgHB28Amyx8cQIHjqjyznHzrSmPhM
	 9DNGRvNnNBcjotbpYCZJ76J/1CxW7qhq1MSJYuiryD7zbCE1sKxZljsZ1Ib+DcThC8
	 3//SsJEpx2RuERwiA0ExM4ECUW8Gv3R5KvTmf3KJa5YFPWBf2z6fsc0B1PpEYnvE8l
	 onjQ2oVWh87aHRALnnsQzCdJSjAIcUVYeNT+1+ubmaOD7VtzUEZg81S2rpGKTkmAHJ
	 TLQYv4yoOyXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF6FC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166603025338.15622.11237342464948613978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350fdea3798d8123b18e6a2edb8bc66b7c7b8143db996ae1d4be2d6a8b5bd4f7
Date: Mon, 17 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666030253
