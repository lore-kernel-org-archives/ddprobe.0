Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B34637
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92D1CC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672809087;
	bh=MSsmuX7SUmmFFPBCAcYPmpbROyh84mnj19ul2ouzFJo=;
	h=To:Subject:From:Date:From;
	b=TR+0RgnIzBXoLfsgSC2ifZ1uwp08CHNAUEgO1W19mTkVVehQE3DpYr7H/2IyYo6GF
	 UVg5qb8z7hbMgyQ7IE1pOxn22RvFRswEVPybMszCkQV3aPR0jmzw1J7Lzro/WtgDyL
	 KLaJ/L6zM+o78Mb1W5L7/HefD3N5hpYd4LeMq70miomJrG3Ur/AcnTpePvmmwKOGjX
	 /Cej13T8iT6VW4tzXjUgec+CiWhp7VNNsboJDz7AgakYvK/6+BAfnxu5wxQEZFQklD
	 K89PdPYPOsZQY8+OgUd6mMnuIt21a+MZmYibiZiHM/BfgFVCtMQEYNV3A40UpOsu8w
	 nViOZ8r9IVS4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6434FC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280908739.30483.7130337267085379509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd371ae91e5c5030792fc539955921551cb6b4f6db034345ffd28f348e270f2
Date: Wed, 04 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672809087
