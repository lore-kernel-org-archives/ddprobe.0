Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF351FC2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA58C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673949087;
	bh=ZKI2tlImynfEXB74SIN6mISGpZBWpqCWuUtbBPOCT70=;
	h=To:Subject:From:Date:From;
	b=k6oEP38TFrKENn2w72jNStlByRqSNtpHOx/d6eeq/hlq1gqqIaA2CE0bhyPLRVlJT
	 YsQy+1G4+Ag4R4OGoiVlrFeC83GfITDx/AoNNyHNOLMMlOuHT3117OLwSRhc1LOxBj
	 bDqmKwe7gGVPtIxiZGV8vCjLJBn75yRZYon3vN+Xrof0YslcnmLvUqLJyoObtebl/V
	 pdWeszX+jmfFF14RmqL7l01jD0Or+EOmY2bSyDfz0Gj6dxJTxA7RRU9DnzDHhAJTSH
	 R9NjrVuqQ+w5s5ppc7J1+5FNBV5BlyOsv3LDwluy08k4pG9q7W5qZmjwx+4mXDjSKf
	 jevnmKP8AqDRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F13C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394908739.11023.2618793432925863729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae24c5cbc16567a128d6a5f42806b7ecba5ebe1f5264f0de2ced1c27cab1dfa
Date: Tue, 17 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673949087
