Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DB623A3
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84BA5C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671712287;
	bh=diRag1oXGH/wr6Uh2++cWLWKEJNfiGVUdFVKoYE4f3k=;
	h=To:Subject:From:Date:From;
	b=r6FFPOLKsfujx2KWQ39r6fOZN/yUwjKXK2YQ1ziXIlgljlTLF4tc5/w+CXQ71e84l
	 GAj/ISqy84i0RDglgk0Khx5+5lm60jlYL+Cc2sdWXNu6OBIk1AgkJsBefd8jLPaZ00
	 oHT54wxGJrhLUQryA8PfH+MYkFbrI7Frdae/MeI0UXvbNE9/1MJaA0CZrAlyyTl/Z7
	 qNAvDwcJ3otm3+CyX2S89JGMmwEt1c+DFnEnQCle62j771oYURYzvZKcJJgutfD3xM
	 fcQu/wyatfsO/vB6HRF33ug88XNjY9oJFBL2bM8ltcdttOomdIMGDMv5xdMLNSaPy5
	 i6ckQ4CuDh4Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66FFDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167171228741.622.1859405504897554033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5887cc389f63be9ba6c64bfe48948e26068eb24620bc21cb56e645a595cc2d10
Date: Thu, 22 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671712287
