Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C2D7B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D043C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663805453;
	bh=tDIDnVNa+Ub+3gpmbQhzXVw5jM5mjF1XZj3XsVki+/c=;
	h=To:Subject:From:Date:From;
	b=JI17nS5mnxrRN0/rcPvhZzd57+S0yNFf3qdOEG7IixtL0C5nTDdi8tE5M9B/8cMNR
	 ZbccdUu+2Hkbzq+2jMLrd6U9YSv/mOBJMTcSCQNNVVu/lOWOvSSSrAFgPMWPuDcE7D
	 1mN2lA5tzytzF0llzpQwq9Pms5lShr5gHEx2utmwkpUw/bbRrRLeufh3E+vgbs0R8c
	 5nC0WUG+1WISGfyLazciuKTDWKHGQieRq6hnsTZqmpWWrtXO3vs+KLhEA8ViFDy5fw
	 fUlvJzGrSka8nRthW4WpEhJ/HSRnHMWtrDyPKOmhSqRJBiGjciF1idvi/3bG5Q8IJq
	 zdY/Kn5LUeBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DBCECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166380545333.23495.13365586525072386279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6245a3cf66a2248118e49a40dda1653eb3cceff91a93db06656c0dd74a6ae6
Date: Thu, 22 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663805453
