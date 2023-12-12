Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2E8584DA
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eguaR+E/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72888C433C9
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702373296;
	bh=8+oMvyfDCwsii4ljbdXiYqpoDWlOpW7fXsVPHfT5SyQ=;
	h=To:Subject:From:Date:From;
	b=eguaR+E/nL3+ivZHqIqgWPGyBys5oh4RriiJwarIka9qPnV23zgTbo6h1HLJz82lK
	 6r6hCuGnP5nlDnvmzH9aUWIX2yNzYRFwdnI3rvLkdr58Giqd/40VUq+UXQljS7NH28
	 iVlEMhWNfQDkhi5gAgylT+PJeM90iXd03sjx8rSlYcNfvfhUML6YYUf3TuyJnrSapa
	 ONcMzq+q07TgfitE9qfq9pq/QAg9KBbOOxpKs6HpkcqzzNkTMci7rbfV92DO8Y/AzG
	 hRPZUwWTivolcOrtysNL9o1nk9ELalmXJBjdrw/EeqeSNq1LSFHq5MuolHHk1oBzT+
	 NkKiGv7ApmoZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C38DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170237329637.16804.11133017614479595421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d77f3777644410afb6d62cd540f4a79a553fb6d897134a0c05cd955b57fdceab
Date: Tue, 12 Dec 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702373296
