Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7E217C2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78653C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667962854;
	bh=oIauOvIw3Aqcd1zX+VyvCqKCL6TFFyM7DI7kJkSUVsk=;
	h=To:Subject:From:Date:From;
	b=Jvesbzo+sRevjZ0l3FiibQw9vnjBzY66+DBPda9WJCcinnIv6ubFHNBgNrnUlqtIW
	 cCJ6sNV30MdIYqGpnDVzMoqgjkm4NKEfha2r8QTt1QVF1O12+LNr1e0pf5es6WnbjG
	 FJOgHA13PuL+lvyMVTscsnfc1rIl/HrehSp7lNJbAV7e8u3kR2K4cyEw4updn0cLEk
	 myIuuF6QUw6NTl8Jmp0HQJRoyg8KeyIFEE5LKcnfG0Xzket2zvsFXmmYxM3CLL6ovA
	 YCpUpCpLg5//hf200KlTJs3FY6u68DZMiM4xSqeGuuGGLVD/CS9yhAvrYFuUTxrwc9
	 moMQAI+C8gUKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551B4C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166796285434.29412.7922705280281818410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234f6f68118389194abc94fcb28b5a061b6cda6a97347f25b03cdc303ee81f95
Date: Wed, 09 Nov 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667962854
