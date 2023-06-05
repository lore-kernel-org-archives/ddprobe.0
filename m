Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A2219B
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 01:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE25FC433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 01:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685928546;
	bh=MgC6qyU3FqyLd/RnH92zKwdDGbsqDVEEJsO0WqfuZiM=;
	h=To:Subject:From:Date:From;
	b=QdnafN8wSYGfJcsOtG7xvsErmzzKHCoMPLnZFCiD29QWvpfVjjmgIzti5UdRXA/1K
	 t81u8RZO/9qOUw0FGUskpUpPUyjFj/yAxxKLY3AiWv44oQ+OnIQUGNRQ91bQZOuTeT
	 ZlckjSSLMDzllcHePu28FcjXq/bitrNtNLGhMLUCts12OTTzAD3w/lJgzNRjuxiS3l
	 1o8YcWPgpe33XCJ979FardlmUDLa8q7aoez6C4ffkuDQ3tdRKF5EjLvJpqqiYIHAt7
	 z1qnnPTKq105XspbGDF7S/VvsTk4GUrKNLNsj/G96yUAFQP8x1VbtCNbeNDwuzUt1e
	 kAOWzs42eLhgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28BAC7EE29
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 01:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168592854577.29837.11924434706320028276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc6aacd509a35f8d251f4dd936baac7a705026a72a70312ce4f63de4fb0b987
Date: Mon, 05 Jun 2023 01:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685928545
