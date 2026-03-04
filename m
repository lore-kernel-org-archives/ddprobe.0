Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63EB3DEAD2
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772648694; cv=none; b=f7UeD5pyE09bV1pAVo2pdPQZY+Xl8zudTS2Wf7ici8ejEBnxcRI2B6t+QdCipWJlgDcYnOq1q+uWWD+Ahkq4X0HvmbjzWPb2bMoWdQKs8om88SEdVpfjhrGv/CQckml/hOH7nmGnFg7gx9qza4FS0qTVkU0pHe6bvFiK2KZ4qCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772648694; c=relaxed/simple;
	bh=gio4Q7N8JlXX37qI/MgoszRz2XeJyvQOuOsfkd88Zgk=;
	h=To:Subject:From:Message-Id:Date; b=T5x8uS3DfE+MSkK8kA1bGwsBQLgfreQcG6Cl1ZuRJAbCInfgFwkRaRIYk+tCrA9mlXUzdHiZgcE6C2I6lnk2PbtkLhPJeexU0is39i9zKQNMTmV3L6FIlUO67aPLNiFKOZO4CmpQr11RCo0dtcclXHNZ7Eu/8J5mGtmJK9yPEUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8mmD9IW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8mmD9IW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F338C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772648693;
	bh=gio4Q7N8JlXX37qI/MgoszRz2XeJyvQOuOsfkd88Zgk=;
	h=To:Subject:From:Date:From;
	b=p8mmD9IWoyjpBa361T8HT7WUwSSjdBw0YxjK8vYe4XQRgOCpGBbyfCQd9VTc9cGbj
	 c2PiLTtO/lN19rChkXGhbIodCK0oNL/JylZ4ERCeJipngTVmrP+AV2x/e3EQt7E67P
	 IYFuAl/V14GV2DmmEfpRUQbueJ4/B4L4taKYyl9uuw4fJqLnxE1KO0lsdz/iiZkwo4
	 +Ozlvj8kwP42lbvSWo79Ev06Jd0eQgdf50XS2VtJ/BcIL/wKoyxihka9LLt/Is90OA
	 9Kum+epTM+ItAS+9psHl8mdmY5eP8Na85Drjgsn5gpUmk9PZFK0QiYYNG6iiwi/0iZ
	 vg0Zg/KZjs/xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E1AEFCE37
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264869360.21707.2217646791327940403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77aa3e10cf5bb9f0cf58cd0a57dc28005a74d7d18787c68e7ae472467956b806
Date: Wed, 04 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772648693
