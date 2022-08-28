Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FBE538C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B28BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661727652;
	bh=zWPX3GqRP6GOJAIg3axBClO9BwgJmRp1nwH85+r2YDs=;
	h=To:Subject:From:Date:From;
	b=Lo2mxtMdrPBIBIu7yJMECMxeE11bCN/F1CbLK79aJxHNwTmkF0aHQ31vdoz0Yx/AO
	 k092KxZqSHkI/YTFpQivh12mt8KoOmDPcYFBu5NYqgYMBx9IGnZAXK8Xsl9H79jWW8
	 ngI8/JknFLHZQbBBZQcvM6M7cpKbW058w2h0Uugr8SHoG79KX18sefp8E8aTh+5U3D
	 +3QCW5ktuA/CqXB99nBeb7UGnlGwiX5MCm4BKYF0cEbBlAtDg13cYm5ojrjYsjYMM3
	 YwpwQekPbMag2EDar1A7LBncJ4wsQJ8yKjDuNIo+1q2E0ery55eu8OzegQRhVovHF3
	 RstTTp2stspFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B9CECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172765239.10574.4086014568519605830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f56945b517e3f040332f7ebe16ce017917d22d871e522ab17005db4ca77ad8
Date: Sun, 28 Aug 2022 23:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661727652
