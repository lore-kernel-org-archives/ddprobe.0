Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543B6361
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 12:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF55C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 12:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677414966;
	bh=OdNqUVNH2gNHcmHJ93PFlC3B1XiM94WAXzITvtk8JdA=;
	h=To:Subject:From:Date:From;
	b=m61zskbxgkklasA2X7bPbpqLs4H/DGjVp7JcdVl+RdvEBYCRo2/9hVOQwtiB9gbeT
	 xinmxU2OWkiAfvGawOdkiQQOqT/ckSkWcmR07mffNRb80wjJqi3JOHpvVQHrpeSXRA
	 1kzqBTl2a9d5e6kX2l8V+TKvxshogrEG2lxV6b8B9YP2dlIl6jV2xQNkFE75wi0OcY
	 0W8YJBwQYNLimzdZlrBPDgIechhisEkJNwB9it6MpAwepxmaX9CxMoLX+mmJHuIOHm
	 tf0EJcZrPCREKYfnuGOX+y5Fmbv2jc1zyq7wXtAg/+WcBJzQW7nVZh2cVoluoCFW8o
	 8ZrXVXW3wGgeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7A2C6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 12:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167741496580.8540.18030792231368975427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552832388f8237fd78871ec56ed3e3ad2da928e0f417dc7c50ff20593e55f276
Date: Sun, 26 Feb 2023 12:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677414965
