Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB71371
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA13C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672023687;
	bh=G+TiophPryLHcG7ZpOCsAr6tibiIAAHZxiW97SHEIII=;
	h=To:Subject:From:Date:From;
	b=SszjTT+f81dPaEkVkSE45ttjj7R8SFSswNt3so80Q7gZjyehJnDvTK5TIhW36HaZA
	 ZzCq74t7lQQ3U0e/7ADifnPfVXrehXrPfztakM7S5oWZMbigSyHJwgI5vOgfftK7n8
	 MT5BejbZXcyW3RtxS7kuBiDxJjEAm9PCgWCY2+yHTHGJEx/mE/8d34uisHLU0zDa+p
	 zVeitclPH0LyzDrv/dTb4yHCULfO7RTMfrhaYPuSEfnaZr38BeanwaZl2IbWM8TBvM
	 8A0GkaSlCQMkaUBGvgb0KZvNyVKErcUiUFxi6tYiQQ1T8pKCGw2hKcnunttlSO/DAE
	 at5gZCoKAXPKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6222FC4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167202368739.12333.3679313168788092788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c98a5392a9f9cea22dc42c23cb7d312b7c2b9a9d22027e90be0700982ef427
Date: Mon, 26 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672023687
