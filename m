Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E14C1361
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747378794; cv=none; b=gP8QnQCUP+jZgFHKGnNCnQ1Ah6/K8pmtxP0kWlLDdHJZlTQu6tBH7p4pSFTIJldfea9SO4unn49ALulE2NZ2fg3NvOufu2Zd0aOhi9W99wk7rzmoFKyOxAtMcJaDyY0eKrFQBrDw62qCKj8IzjsCov4mopbY4aYdW/WABtiNtIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747378794; c=relaxed/simple;
	bh=SE7cNh9NicCrUeBTh/fKI/xXfksfOA0OBBhyUW5EuMo=;
	h=To:Subject:From:Message-Id:Date; b=ktRwbnvOnYArTVyk+EEafAyydDv9S+xbkgSq/vAW2XgpTUwvz2IWwwlTb+sa+Mjr9qwRK5cg2WVhVR8fsRgSf3tZR1zbuyJIcnRsyV12eDvkXq6QAkOpBqReOjAkSojgiNyRpau5bNagpaJx2j1YEhFh6tW/z5CWb7fEiHJ2qfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYT00cU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYT00cU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8587C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747378793;
	bh=SE7cNh9NicCrUeBTh/fKI/xXfksfOA0OBBhyUW5EuMo=;
	h=To:Subject:From:Date:From;
	b=qYT00cU0pMnYF/PBZhpRsodA0++oBP87NUtKXRi0ThkmXlZ68ncogxeYYpmhxbsa3
	 7y8C5xO5IbUdS50dK4sH5qNHKvnCl6oZ9CLlh6HMeTO0qoW2xFMoUE21n3NEgFPEVr
	 B4LayyRZuiAsgkeQA4yWQaCYV6iYdUejq85FGMFPc294w71VQywoK7P/ysRXj4WcQc
	 qy3gMu3ETQHU02woBdVVoTplh7XqKWkcgSXARm4NGSFAx3jzQN405F7CmFD8rCNvk4
	 6kB4V+ZqwUJIg6aPBo1HOkbOx/MdqmfFO3tzF8WlPLl3fph0EXkIPLv5+N1hR1loFZ
	 bvlT7Bny7ulkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF3C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737879358.13253.479721617821180243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2169e65773e576f67453d81a8e3a324ddc7fc6447aeca291de53396e3bfffd85
Date: Fri, 16 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747378793
