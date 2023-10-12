Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6140F2773F
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 15:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6vw4DJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA399C433C9
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697125028;
	bh=qflbfZAdQutV10bh/mM/8LNBcFZ8GbSmwMBhyGT5Hkc=;
	h=To:Subject:From:Date:From;
	b=Q6vw4DJhcd4u424+YTmW9XM3boIqM+xkUs9NJPBuirx9gPeRa8L3UMhJtknFFFB+x
	 CEUGPtfoUvs+TjmzhyvxBZA4AnnhoCGzTKiP7VTZyhG8QHHwfrhCzj4dMujdqs3qKE
	 OokB/f3Ll4kRtCYXnZtSW53T6PjRmnOAUnb6ytt+uoImNK3juPMl50qfWUbanksn6G
	 dt2e69DfabYPqqXjyEs/+icnAC7JZVizxUz4kH3Klw+lzbMMr4Vc0vDPAZ9ovKNv6e
	 1jbu5yN/dl4M8zeOX47wraDNQ+aC0LVWxS3/nt+LvWdrZE3KPtMMWLP2h8sfjZP8Et
	 27/WEX1bvz2sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEA2CDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169712502875.23333.905016648660570868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b082d707c361ccd1c38edde61440dbbb2e151dab6cefcab1dc7fd0cf4d60b1
Date: Thu, 12 Oct 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697125028
