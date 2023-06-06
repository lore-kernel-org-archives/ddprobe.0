Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557D2294D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 22:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F2EC433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 22:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686088925;
	bh=lOQ60dho9Cl+kkzA+KxWbShTrHN/qfcHzU3x4lmaYXw=;
	h=To:Subject:From:Date:From;
	b=Do/PE9mLOAy/8EbSds0Wd/jadqZZRpNH2RlNNlXYjw1b0gPaDR9On8rux8qaHe/AM
	 jf513jh/KuAFT6lsZNG4NVj2SuTQ4kXt8yBGZruM3o2e3pc5ZPlajQWAVmvh/lXWG5
	 xcKFpgjGkK8bdKPt31bJzJguu7BZnkM/57/WktmIaEzmLHZN84ejPxkfduXBDzWKOt
	 pELcqBHyBS38gPjDxRkbuuvVD9mcIiDAmE0HeUVa+vifH1eBpaNRT89Z92UrXbJh3X
	 21nR3uypVnZNnMdgMNCqx2YjvLLzkfaE1jZgf7gXoGhqZpclLgPzKPBslHe3MUUgUA
	 X2FQbuWSW3moQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFD8C7EE2F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 22:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168608892575.12538.10165186423926114627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670d06b07f9bc2a0255c599f29afe3feb669b14c38ce622265da192fdb129174
Date: Tue, 06 Jun 2023 22:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686088925
