Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEE610E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 05:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E8DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 05:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679290025;
	bh=kUGfBJ4PvQHQ+oYSwUeWVXAd4Yt9W6JMJkZMr1fxOlY=;
	h=To:Subject:From:Date:From;
	b=GjWahA3uTYTOXHs2OhCscmRgh8gKUOdRK3Ffa8RPeoB6ha0nLYNxChAAIruIdlLKl
	 l/20s0WAEnrq/5QdP9V7NmdQqdhSRiaLLGIZbsvg3APTGI9FT4Rralzzz620DypmZz
	 Mze3qGNY+12zXNwU7+W5dGzMP1wqGee7UHlkTrSyBRyTAhovd1mUOr8sZdXiZyx/l3
	 qlN88y63L2MB8mXbqn080dCKnGEp/am/z0JXbK5JjjyMz7B5KbHbtnems4hnsx47pC
	 lk1z89eG4nNExKFoCROCT8D+ssEOPjwjaaLswLlHa4cUbvry62e8gtliOuvDMQTLc4
	 WolsknMyvjttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFECAC7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 05:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167929002575.29404.6630994251379883152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687cc3365cf3d7dddc4675ea4ad07407ab48a71ae65c086b5513f54531657620
Date: Mon, 20 Mar 2023 05:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679290025
