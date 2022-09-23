Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C062F25
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F8DEC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663927853;
	bh=AZGs15hdxu5Ef29AsfGp0GJEYTJSCrVzqv2qa9W9OxE=;
	h=To:Subject:From:Date:From;
	b=KUUbZwBP4kXJU4JozM2xUlDD3p7qZ9p8MzTiUN31wp2lNIcQ9CL1KP0+IuJkBn/eC
	 HZiWjcxSjqXTc2G7WIrPZ7OQ1oTWTIJKs7OxyzKdL56PHFYU+zyw2yMCQKRpcpXkuJ
	 OsHaUn35hWNSbLHG/Jo4n66LO4My+dXmoznmJO6JUBTyt1863nR7ycDUE/gPor3Xy2
	 1DyGKzVy8tLtVsjBc+c4nUjS6vrkZ0M8W7HUD+czMpZHeBx8VWSn1yXk9QuUyjwIGs
	 8h7HuqBaORVUWNrtpsbLANZ0OtblrwZLv0B/685jEk91e0fk+Hii0etQVGnNWL2tW5
	 3MT2td0byuxQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CD9C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166392785333.24587.18021154571755470763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec8d153954bd066d46eaa4a0f835e8e24a526085a2b596d8f9c6887320de0d2
Date: Fri, 23 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663927853
