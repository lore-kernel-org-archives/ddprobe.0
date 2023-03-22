Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161D12F37
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 18:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D315BC4339B
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 18:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679510945;
	bh=Gqu5mq22nccOWpP7BRXFUPCI3ROhaLWXCj5Y9wOKkoU=;
	h=To:Subject:From:Date:From;
	b=p9k+LUSt334vNk1ns2jyScip8xe9XddEhTosvV2pVTAzhhbci4UBX3chNFoB/eJyT
	 m+EjGYfZGKFCujcVAhhvmlfHkL4pgkYj4J1aS2rCRvXiWMwaxW3LoqnEuVgaJdw9HJ
	 zxjCOPHfpKjs0a67rec2ZA6A9jC7r8x3JZ3JRjv2bBul+M2abWWskApD2KJ29A0xxm
	 XVoicCSDmnV7qzyX8zhZkzWvzJc2VeNMmdt36YoYsOu/1IVDmZVHPz5hM5XCUS5ath
	 Lx14c4GHf+DjaSoUw1RnSQPPTMg6TQKP6HY+11zN9Uit4KSLVTouEIZd/ybHBwD01k
	 yB+a15DXJ0amA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B899CC76195
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 18:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167951094574.29938.13736760050689517605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350cee11692eb5cb4dcc35ac39587a1e36aa19a22f39ec96193661d97fb1a6a6
Date: Wed, 22 Mar 2023 18:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679510945
