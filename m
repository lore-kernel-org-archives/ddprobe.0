Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6100214017
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 16:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DADC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 16:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693499048;
	bh=76siGbxWLEB4HhEiM087U03oZkwSBsce11qCx4JY+58=;
	h=To:Subject:From:Date:From;
	b=enHzlE1QnwvC6WRWXCRyjXXYnZS2evahEouaxxEe5BiJgE0mbvEGDkk64mutdl/zA
	 GuCBm0ZddGXgdEBk9E/ahwBG47oQoInMUXeScg8VLZUX025Z5HLFDp1nbhx6xsM3gU
	 2CpAZaTUic3Ez+bmpmnATcEkPjupGy3E8aVAiWrg2FzR86iGeTaHzAm/qtjNwe3+VC
	 /Xz0VHqFVgYcBtqJL3kBkRBrAsekxRP06zRbO+Ef1wG3MvNqM7ZeNvVEcMYJ/8iKBM
	 hy5ncH+NSsIU7c+vQoL2YZ41IEtZ17kTL17LqH6hloEezHoVkwW7Yy23mkm0AKDW1s
	 wMFYLWMto2WmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F1EC83F2E
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 16:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169349904872.17450.9823653717603042244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936e8087fa11a92d0c20168cc06d43fbe7c62c865c8b0f830db4bc7f0fac15f3
Date: Thu, 31 Aug 2023 16:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693499048
