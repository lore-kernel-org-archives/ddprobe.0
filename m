Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B3F36E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81FA1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671933687;
	bh=v++B3FIyQcCbqq7CCqHxJDomqci7Vy0xiq1mRfxfzVw=;
	h=To:Subject:From:Date:From;
	b=mKe6RURFH9ztX+wmGtov6+Nle+wsivE92CNbrxAySqQJpAoL/uq4eTuxKD8wyEQdR
	 xaWjZKFbznFef4AsFdw4f3c2vBvXnEqA0i+9tr0g6ODn47dnNvYIHFTF1XtsuI5tAI
	 wn4EvSxQn9GGtlfLWtZwjbm3ubnuc4qFG6uYiqwLPaaVW4Da8qacz3xQi7yb1kSDos
	 Fv/PIreL95bphYZ2txso3mztWjRhuKKBGEk0o9Ji3fgP4qn6HS0VtYPdcb3qczxcCp
	 0J1cVK5IMTmFeD4ML0FbZiZhhN3PE37CD5Sd2pGnF/z5EXehONAW8ryjobBajk4ZGE
	 VhT/7t+tVpWFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64194C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193368740.29341.6546308001007645570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b5f23346254bddf96a5de7b7c936a1700898985d9dad6fef409af05cf36960
Date: Sun, 25 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671933687
