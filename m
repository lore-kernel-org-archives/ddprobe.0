Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610B01C9E2
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 16:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E68C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 16:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691598188;
	bh=HoAa0qrHBK9fCUBp/n0Mqg1Kp33mjf8j39ik1GtjQgw=;
	h=To:Subject:From:Date:From;
	b=SA4sWjiDq+9NvS3tdCCo90Igzch/uxYFCZgmNVN7nD5qyoXYv3aN9+jWItp/h17DE
	 XPKwoDo3MHWDzjswcmOeM1x6uMtLoMr7pbQEkVP26L/2wmvAD8foVzTg/ODUdD2xwa
	 Zigo+em39E6FC/Pe4/oA+4KkZw21rHi8t0X6XZv7X6Gob0OhKzqWCIxVNm4VaVmITF
	 C4RtzBjyNdUoKxRZmDksgER6uhE6ipMEaGO8iqlJ3dpjL5QJIP9m2jAinmbQtj86/N
	 o5rISIrhHZcHFqHsAZgL514fdR3mTXt7rHdwrBfXJysjAppI1hvhqFTSWxAo+nHpoL
	 XXtLBNMAN0UCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5229C0015E
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 16:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169159818873.16259.5695025101662866489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29e04bfada22e9a064344105e0d30c55bf96839c2117e75d78fbda47ff63e36
Date: Wed, 09 Aug 2023 16:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691598188
