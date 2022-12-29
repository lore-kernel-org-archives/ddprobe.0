Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39A11FA1
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6FBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672308087;
	bh=ItGbrmzzK/XHE+GoFVedGkN13Ryvz1xQesCcCtOMKt8=;
	h=To:Subject:From:Date:From;
	b=BBNJbHGgrzYYzCFGPctHWWPMMKwjahJUfWsvawz8feBdCp2f3/N3De6DAsgrvLxcO
	 5kYfVevCkcQdX9qetBAdAFMuYxygjIVHEItQnJO+Ufnutr54GRn+vugeGe7HGhqujM
	 Z+rssMIyXgmt9Ya5K2gq8PQuW6DQXMR/TkZklVV9e2x4f1MH0reBWtoy55VY52wY/c
	 YHbZdwfc90pAV4SFWe5/ml/iCYuvzF52v+NP7JoER2wxLBgF8kCDwuPZ4t60lvs93X
	 xbDKJd5NkBqFvO5T+1zx3eMjtXrlV+/dktYUlrxh8VQnYgmW8l0fANPaYAcIycGjhm
	 DeXqS9eQu5Lzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6D3C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167230808738.3405.13376150415829045850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56c29a6ee7163011ba43c241251ebf67bc2246c1227a43afffca3f3cddcd7f1c
Date: Thu, 29 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672308087
