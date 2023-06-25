Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653597461
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 17:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E350FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687712588;
	bh=uME+7KHdbdkJCMfGZ4a/d13jHqZ8ueQL+SgmwNbcWN4=;
	h=To:Subject:From:Date:From;
	b=NV86FZ8Oj1kuuKSAgRXGJusT1K69/NwaSQL/55S5jGCq5BP3Mvdc8TEeyZ9SPUukg
	 PO+2dcwMqKmgSDGJgWX+zzfaNvdqNwMR6nDk24CZrh1BbvUV913sLms02o75YaiNTw
	 aECU5B+Ywnsv1Cu4mI+zAQiRAZOaIKu4v8d5Vo2lGSVtCFxEVAmNdzVJe17iXfqgm+
	 W38drdC4P3jKK/OEKj5n9gPrtcIsv1DcwmxjC2BkarV1VZhAkCyE+gnml6jF3XOo9P
	 kllox79iU6afd/jUJ1+fzxSZ6O104Tu7qNaamn2Am6NLFIW6iVMMc1gVMGzPX5xMbE
	 m7OAK9lre/ACg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6161EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 17:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168771258878.15364.5108012126791566179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34340b1d5bf5571bf94a7d99a9236d72079050c62151d934bb16ef49825a76d0
Date: Sun, 25 Jun 2023 17:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687712588
