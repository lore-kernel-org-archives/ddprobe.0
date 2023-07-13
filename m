Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB4B469F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 06:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C059DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 06:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689231548;
	bh=HXjftItX5nlp4EMZdfHQnC+1niO+J30Ni+jXxFmxSCQ=;
	h=To:Subject:From:Date:From;
	b=BBD/8Ek4/e3QRlZQYN1fpUbFXPAcKj2+SzfNfpaSqitmAOocTUPJqm5BfNbDHqfQm
	 Wnod2BYXQqGNrgUoZHgmlVBiTt266EFYUhAVxaTzQLyh+3U6hhbRmMuMbATOzPnVaU
	 xdjU4OZp4F/UUE/B/1mMdG4VKNzvsxaIl8KBt38pPILaessD3Ky5H1LLTFQfvuhY8V
	 LsEe1iEyF0eYkLVjV8PKJ3gluBLlnq8s/sPBVEB1pWGJPnnv7ueNymrXgdxYr+zE0W
	 X1HwAwdE48TNgXdkhnufo+lshlWKaZi5RPMifKpZvotfNT1aam5CQ+mXKm2CS8opBm
	 EiDc/0rr06GTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A826DEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 06:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168923154868.24980.18318597525181812480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69f7c8660632572bfcb733a45aefb1f82220bdfc86fc37564b3b3e679e08b6b
Date: Thu, 13 Jul 2023 06:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689231548
