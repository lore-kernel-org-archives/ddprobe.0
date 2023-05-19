Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D83111C8F
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 18:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03384C433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 18:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684522086;
	bh=6cs68lFKaey9PFNoUH9E8mbojQ+CDbv9JFr3B+Bnhk8=;
	h=To:Subject:From:Date:From;
	b=XTU7t3R+YYBKMThMymoi6Rv15DpOkCBBI9czcFCqpQrXTwKIXipWQQhgvnOUmr/FS
	 cn4J1zAjl206/rKFqqeXmiLHr9y/HcGaA7wXSMOX990HrEgUv40e19IRxhZC+A8WaN
	 e4sBDVc3oVJTDe9H7PwkqujVrTZAwjZFuWcaoqxDLvonqDEa06g/eKqGT3hs4Z4MT2
	 +hBrDBPyDdh7zK0a/+c7CTx4fFAXXqZ4YShIvuqH4Y05rBH0fWNfH0IKrIURmeMYMy
	 M5SeWZ4hbt4wn/4KAP7UVOGeGjVnPAHZSNWZR6TvghWMAXVv3s33gDI9IO+FUnmdFU
	 RV4/0NMSMuzHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6A31C77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 18:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168452208582.31767.6119939003586723154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9bab2341db1882eef6c636ef0a4ffab1a77584c19826efab2c695ad7e2df4b
Date: Fri, 19 May 2023 18:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684522085
