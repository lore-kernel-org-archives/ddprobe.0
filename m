Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB4C2AB4C
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 14:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5047C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 14:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689173948;
	bh=z7ORpZ0ipcTl43AVNbzW3gh24MtAx+kwuXr8R+fOxJc=;
	h=To:Subject:From:Date:From;
	b=Kt7HaAhf0sCnWLJBRVMeZ7ckA1OuqcowZJo/GsTkywwihb522GqCVCjJrUiPE0wkC
	 oBNRSt3IS53B+ZgVaHkeKG/F5+v0rniSVGGmoQOZR4bmN+SDLdxd+con6sfyO6xLFN
	 Gr3ttAFbZ/etw00iy7tVLAiBq6f09YKxSbF4AmUl+FVXrug1aDpOv8xtQqD64ppJxq
	 XRJvXbFFkmTsMywMjSnoEz0CotVgJBRnKUL5faTBJfxwfOjkeQOeTPHV8DT7BNgygH
	 0TbrMzJU6cZPNpsBkmLyBb+MYhA6YSDJ9owbXA1q6FQA0UjB+jOZV0TlZoT3V/a5X2
	 eKeHhEgmvnJpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC2BEB64DD
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 14:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168917394869.6902.2943276133629248026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839cbcf2df033d8fba3a3602ff089181dc83731fcc8d2c3e385ce875845b3cba
Date: Wed, 12 Jul 2023 14:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689173948
