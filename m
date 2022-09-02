Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74426AA9
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84ECCC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662148853;
	bh=fZ3uXmXtUjblnQzwW29vsLnBiL8DqL19FtY1ST07eGo=;
	h=To:Subject:From:Date:From;
	b=bfX+AAQatb9vYOazkcvdaS8PvJ31E7p25X5tHp9w0MvJsMW8mwlLzUsZNfY2ra885
	 1ukcgzFaMunBmtkKyVVZJvw8w9NjCe7gVZdVJp0ayXoyG0kJHIL3foC8+Vevt1REu6
	 5U408aW2+HIq/MGDbmXvp4AavK0vWm19Sang8YLQdDTR0TKloG7UM2bbbDEhW9nYGm
	 iE08EgsluSeKSEPx9RFBYaR58i6U1cCOA47Vlg5v0M65W0wzcpMr+kpU1Ju0j7fDrJ
	 c1Wn3UwL+VP8FBiJuD+xWqJLs19GHe1PfGL/Se6KXP3boWTx/pNxz7c860K+3Ta4E8
	 pmNa0YlBQO/Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A08ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166214885339.17521.3108460742329451451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972e21826f5296cf6ab1d2c9fb5edf3c6fad41d6e12d74dc7197b69a4ed2bdb6
Date: Fri, 02 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662148853
