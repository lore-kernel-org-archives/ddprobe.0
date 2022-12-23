Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70CE17C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 865ADC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671754287;
	bh=bH9vjtt0t2zo0mdRBptt7lZg6ndHyKxBiMmIUw1BjPE=;
	h=To:Subject:From:Date:From;
	b=UXWvo8xBjW2d0ndKgazAHhTtSYcppoh7dyH9yOmmhmNhxaQAG5OSV7oFeTpXD7ZhY
	 rHc3YezdXBamtSQ4A1ec9kLu7fI/lHIf4tUj45yI9zov1LRWwY/NqY99BnbRyDtQ5Z
	 bKUs40JVNlDbdK5/JEe2I9DChiziAG6YlfukCVAwoFrjeL8BeVSXMtf2zmo4FJXhKk
	 whPd5ZcEPw8duVk658quQ3zR7pLxUlqOzL5GlCns9P6TmgI81Q4sDqS5SBk5vgpXAo
	 w5r2EgTmZm/hUd2pz83al3j2uxI4AkuQor822SZj3KE4v0tH/hbB1iApFL8bL5VDbF
	 GyYITjDAOrUrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69AD0C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175428742.25715.18059185340400042792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd619f59cf8b015b1209723cf9288ea612e6d999028d25bb90b72783adeb4ff6
Date: Fri, 23 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671754287
