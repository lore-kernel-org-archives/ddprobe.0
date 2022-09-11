Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFA67F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFB7C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662932453;
	bh=/vveh+UljwvJ7qRxgvPTJm6MAdINbC3FhUEDOTuk7+k=;
	h=To:Subject:From:Date:From;
	b=g4ghnIBdoiP2n3wVbABvM6OEGiSKH7dEpGrpnIMx87mW4nSwjdxnb/udhCNwk8Axu
	 DucZG6ocnvbzEL8d2QLiEHzryLJgPfcKiLY6aKfsUONwx6etELt/KWse/N0qP+hP07
	 mVLf0Yc4B0dmv4O4ttlVtEU4oYYfhd5hUt+UqCNx4QUCdhxvniiO2aCbBq6+6fL24b
	 4VhxUi5vrFeajuoQQGSR6wwItYVbmXFbdqK2wwhLQHN9IIMRANTLEttBvMMGLN7kJO
	 l40Pt/SUetmFFgemuVHXf7IHUpxis0kbuK9iePa7ruakI0lB8dHXWPDqSShA5jwY6R
	 pAWDIhoUbQ66Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A03C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166293245332.20040.15798969571428085768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe62b3f970a2c10550fe7a9b96d04e7212e3e10989ee40602329abeec6e14c77
Date: Sun, 11 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662932453
