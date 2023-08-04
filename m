Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D63AD35
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 11:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2ED4C433C9
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 11:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691146988;
	bh=F7VWjiKMfrEhkBaD50w9trWgvq/ycjdBQNDj9MUtBX0=;
	h=To:Subject:From:Date:From;
	b=bDVLemAiTV2atf7IrGJJIdNxixwAUiEgFZs0YK8Gb04nXx9hAFI8GCW2DTcwiWdFc
	 lW6l1s530djP1EaY8iDbvKHKAnyer60mZmNeI4aOQ4zlwnK3Pt6Wv0EFyh6HD7WccW
	 /XFv/sPFYbZpbhwl0sCKS7sbnQ5tqzuXq0Y96ZjBIo6Q6Pudhd6rXT9fAuLvQOCDcf
	 yVHrX1sQ+SFKqiTF6Ev4wRaZfpplL2gFTUKWJiZsxf16mbvwpI6M3ekivLuzMbIj3V
	 3hJ42OOVUcE9JSMnuxcsClHPH38Yptlwt4p6AHu9NH5bA0tnzzmxXtTtpe674yCpqC
	 4x+Wuh76iXKEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59BAC001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 11:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169114698867.17656.12515623000811757628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b32fa129c956080d43faaab6eb919a803dba66ff026d7d2ca9a8a4abd0b12b
Date: Fri, 04 Aug 2023 11:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691146988
