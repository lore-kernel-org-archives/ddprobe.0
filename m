Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E93AD2D
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 21:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CF6FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 21:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681768746;
	bh=miLLFx/HCPtl+HeE9iOPtlXH1wI90TX2HGdXTrWLDoc=;
	h=To:Subject:From:Date:From;
	b=Ur5FGnXpzlR3Q4SH3VAUsjquvb5ecZu94AfhwUBI0luUCIMVic4I/QfxseD7VFv5S
	 GSUIGUWu051jILE36zKORYBcIiEPAsSgS4kgnlFHQ6Nh5TvyJa+3KI8IzrfpUWQ+XN
	 xQnNuAREbxN0uRN1q4KtfFKKrg1WTysgKFljncae/29jtRAzyprgfqxYXePCjbbjpQ
	 5SWFWQb3WgVzbaUhrLMWCEmTqA2fSulyxvlet8uvEPXDTfd6inb0uSjnCCrHRP6QmV
	 /5uZIiEDqhKQ4/ERGizWY7AA/Wuq0Lz7313A5Mkq8S1zD5Ew2hKUz4W1faw6Me00gD
	 twEXfhHSATwBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF08FC77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 21:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168176874583.31599.2710780349008789967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b401331953984d56623592dee70dc09e1a91f8ac51f3b1f036e295434e5f7251
Date: Mon, 17 Apr 2023 21:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681768745
