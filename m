Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449A92AB20
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C806EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687279328;
	bh=CS9/s4HE/WluhB2UGUgGbxdiAJuo+C/LpxSHoQ1bIL0=;
	h=To:Subject:From:Date:From;
	b=axjUD5j7pbrjpOfonYR1PfaDj/eiCotF8qLjbpHJP40nXR+Apwxg2Z8b0mqX1LGGh
	 iae9tsWZnMG6SdQ+BWxscvEojrrbQxngDxb3jbUzYOXVQATIY3DgbrpBU340q8nJit
	 TXnviHcJpykImOb+k02URGRi8mIPqoFS6RQeX8sSJJpN6HXI8KR2wqIWCVrEUWMTHE
	 lFUSPMKvLGKqJctEHnsPUtOepzRGJY/CXQFGHL2/i42kbdYwbjPSmNzF9+NrGsDhQk
	 x9vRQVQiaoNr0eMYND/JOu/H9jcLYKFb+JiyKOmJH0GnR1Le1ah1au7M6WC0xiJzCt
	 D3pJyQnv9xpuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D11EB64DB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727932868.8393.6280284840224568616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e63503ae2bc86bd974057efe62a6ae036b5c48b5a7fa2f2ed357a584a976cc
Date: Tue, 20 Jun 2023 16:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687279328
