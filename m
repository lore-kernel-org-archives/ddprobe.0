Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F6B7B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771F3C433D7
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666412453;
	bh=D7Nw9Z0y/gwxkoj9nQbikQHrLQfqFlQWVxQlPU0OPmY=;
	h=To:Subject:From:Date:From;
	b=QPGfSuKRVFFyttvUpNCm/afeOxSSOSKvcrHmjCKX7OHKshNf78PadgTBi383q2A2z
	 Flfg16nBJwtNLAesslQytwyKmCZ1IDkaoK70K8tLxr+q4C9qGParyWo3sIsdrEfmIj
	 zcI5KiEa8sLmx0vkPGi0XrYVw9cFx6D3kEm8+JHSuObKjSA8xq6A5RRz0dAOjqygYF
	 lQiTeHS744d7MCNVBP5Lx0Lg3BN6IWb37WQK0iJCv+JKVsxPIPsoiZTNFWQ5NffPse
	 YFI6XXUpls5/yAHwosyd0zz8MM99BCqGIkNeDdfnHB/LF93o5ohfMa+IZfKHuABVD9
	 IB874KxkAHMYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B273C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166641245335.15958.6812414284740478173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba4493fc273f634fb900820de098fbd5ff432699c77fc3f24c65ba840cd01bb
Date: Sat, 22 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666412453
