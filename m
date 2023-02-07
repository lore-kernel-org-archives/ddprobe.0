Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A88F79DD
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 20:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF83AC433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 20:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675802945;
	bh=3fITU/Fj7+n6XGt5u+60990fX4g3vA3+MQxa74JQtSc=;
	h=To:Subject:From:Date:From;
	b=kUhQLj5exgjsWRNqFXmfuFKegLfV8VuRca4LjWEISj6kPZ3oW1GhGn+iL0CVS4+jm
	 DJtF3oXho/LSKcD/WkB+JPqOdDTPXYpa1YtbXXpEaRF9IutrndvZLKPXenK3D1Wx5L
	 XomD4Dz9lCo2KoH3quUrP22HneLLWJ3MTkYZKR87dmHMWgGJu7a7skin4xGEPfBBjc
	 jX8LBgoABqaSKsAdTVUNjtOOGMsuISu9IMfAqMq7FdAfN5LYc5aYnvf0E/epjSLb1Z
	 NcfNhRWtY+3gzDeuIE9YB3QcAymtkyJOl4rXZ0uTMPaiX36s/S1br88owI2QnV/NUv
	 ETtibHdv5Jh7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C053CC636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 20:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167580294578.26450.12618578966486194292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e16d668c0459c2511ccc13a55a0b9c1504cdd4ab8113ceeee2431ac68cec1de
Date: Tue, 07 Feb 2023 20:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675802945
