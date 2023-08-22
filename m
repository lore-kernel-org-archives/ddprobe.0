Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535FE10E9
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 01:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E33C433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 01:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692667448;
	bh=ML31cQmTgvi4gVd+q7UeDtn3adFcu3qSBrGntPkZReA=;
	h=To:Subject:From:Date:From;
	b=ayBNVz3k9EPbh+xbty5Zg4cIcBJnV3x3rfo/tCqXQMLlVrdefIOysF1qs3mPbLWuW
	 WZ/rUG23XmROb1H8nuFDaUB0MvAiu8rtrmViBGPsQmZ9ihpaB0WENMfLzjxktlVlBB
	 Q8def20ADYNY9iTeO+IVZ57baQssbAaDUHgJ2KHlRwphPqL+YqW2gWNAkPaionRMzv
	 H5hIoCXZteScu904pihWYXUUVy3ECZUUg4LUooz6Z4DUG7Sta2z+eD9JY3uCOUFS8r
	 Ns5krcAJWnOiYy+LI34I9ENlBtrJamhmfSs3Rh5pHTZQfajNKKsCBwTJt+to/3+sv9
	 FvnzSdHybvTPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CC3EE49A0
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 01:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169266744867.13560.11745391966285356217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734b0a1dc8db75c331b3cf6f1a9fa025976a1a26890415f763b9b40a24647ddb
Date: Tue, 22 Aug 2023 01:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692667448
