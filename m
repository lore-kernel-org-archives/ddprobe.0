Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D567179C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CF3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671485487;
	bh=9DWo5NQyTI0FVDix269r5BZlpRM3GNHfJPhNwdxjbSk=;
	h=To:Subject:From:Date:From;
	b=N1WsvLG/jFBdg47SuryaSjEtFgBUdDNg1uhC9DhZOfrD+05Dpy8DrL9h5BWSbe1Iz
	 p15yiXs0pCil1TZXnbw+niG3o09BU9MQ8uOz8QPFLJ1Trp2g5LGnQsOyKJmVoZ+JvN
	 uwoIx5gvuIilsSz3n4J/j/uf+aEx31xbGbajf2V6ylCTRjXt541WO1dDmZ3x3WzGt4
	 MvDoK7w0xv1eLh+HcfuFUmYGRMwTWCl3JnlCHyJxpRhh08hexqJVJSArt3ltBKtlSI
	 pwxWLJ7VX1T0QzIJcieYOlYe2R1lYeqALDq+dd4ECXmu5wf6+0wMvdiAxLyn4KzSjL
	 E91A8szQqH0qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FA6C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167148548741.4131.518510030688081771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7903cb2242e35b16c7d20eee3060ced15b847598eb23719675d7a1f696024b
Date: Mon, 19 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671485487
