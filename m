Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DFA17D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E719C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663216853;
	bh=f4Qa2rxpkpp5D1tCXy5RfjIMaXDxJ0uYtewqXize4pc=;
	h=To:Subject:From:Date:From;
	b=Wpo3Pq1pfi4/Hs4r+SxjBb8byQO3iBBJx4PtXuOsyXZ+MYQ+NZ9Y5W3p5Ghu+4pKY
	 hP09vUjbYEgttB5yIUouc1ZVClqW3wtB80PUbUHs/vfUNDOW5nQtdwE/FDAM1iaEaQ
	 XLSPLdasBpDvjKBXiicl2Hdvnf08UupXt+tfN4nAmrS8LsiHAaI+ICTQbfPpaDSMaJ
	 QlO+QQXOGibi+yCNWMzX0Sw3wv43Uo4iUlHnU5dgdIAumL1BNhEH+PnijMYHirZrQB
	 QnmIQ3D4V+aVOGoumIVA8Fg+x+e/2YRRTCFvsTH7gG4BUIXMiOkTj7sf9AEhe1PLHw
	 m0hYAU91L3gZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521E1ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166321685331.6106.4083900534023503176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7883be6a6b758e5b042695691927508c8bc67247fdb62c24585e18a3d0ed3a
Date: Thu, 15 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663216853
